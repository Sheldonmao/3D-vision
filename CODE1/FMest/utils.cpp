/*
reference: 
https://gist.github.com/thorikawa/3398619
https ://blog.csdn.net/xiaoquantouer/article/details/52015928?utm_source=copy
*/

#include "stdafx.h"

#define SQ(x)           ((x) * (x))

kdtree::kdtree(int dim,Mat mat)
{
	int columns = mat.cols;
	int rows = mat.rows;

	this->dim = dim;
	
	Scalar mean, std;	
	float max_std=0;
	int max_cidx=0;
	cout << "this kdtree has dim :" << dim << endl;
	for (int cidx = 0; cidx < mat.cols; cidx++)
	{
		meanStdDev(mat.col(cidx), mean, std);
		if (std[0] > max_std)
		{
			max_std = std[0];
			max_cidx = cidx;
		}
	}
	Mat sortidxmat;
	Mat tempmat= Mat::zeros(mat.size(), mat.type());
	cv::sortIdx(mat.col(max_cidx), sortidxmat, CV_SORT_EVERY_COLUMN + CV_SORT_ASCENDING);
	cout<<"idx height "<< sortidxmat.size().height<<"idx type"<< sortidxmat.type()<<endl;
	
	int division = 1;
	float value = mat.at<float>(mat.rows / 2, max_cidx);
	for (int i = 0; i < mat.rows; i++)
	{
		float *Ti = tempmat.ptr<float>(i);
		int ci = sortidxmat.at<int>(i, 0);
		const float *Mi = mat.ptr<float>(ci);
		for (int j = 0; j < mat.cols; j++)
		{
			Ti[j]=Mi[j];	
			//if (j == p_node.idx)
			//	cout <<"for i="<<i<< "Mi[j] is: " << Mi[j]<< endl;
			if (j == max_cidx && division == 1 && Mi[j] > value)
			{
				//cout <<"Mi[j] is: "<< Mi[j] <<"value is: "<< value<< endl;
				division = i;
			}
		}
	}
	//cout << "now division is: " << division << endl;
	
	this->datamat = tempmat;
	cout << "original datamat is: " << datamat.size() << endl;
	this->root = new kdnode(max_cidx, value ,0,mat.rows);
	this->root->left = iter_constraint(mat.rowRange(0,division), 0, division,root->dim);
	this->root->right= iter_constraint(mat.rowRange(division,rows), division, mat.rows, root->dim);
	//cout << root->lower_data_bound<<" " << root->upper_data_bound <<" "<< root->value << " " << root->dim << endl;
	cout << "mat col :" << mat.cols << endl;
}

kdnode* kdtree::iter_constraint(Mat submat,int ldb,int udb,int pre_dim)
{
	if (udb == ldb + 1)
	{
	//	cout << " ldb" << ldb << " udb" << udb << endl;
		return NULL;
	}
		
	int rows = submat.rows;
	int cols = submat.cols;
	kdnode *node = new kdnode(0, 0, ldb, udb);
	//cout << "now submat size is: " << submat.size() << " lower bound:"<<ldb<<" upper bound:"<<udb<< endl;

	//Scalar mean, std;
	//float max_std = 0;
	//int max_cidx = -1;
	//for (int cidx = 0; cidx < submat.cols; cidx++)
	//{
	//	meanStdDev(submat.col(cidx), mean, std);
	//	//cout << "std of " << cidx << " is " << std[0] << endl;
	//	if (std[0] > max_std && cidx!=pre_dim)
	//	{
	//		max_std = std[0];
	//		max_cidx = cidx;
	//	}	
	//}
	int max_cidx = pre_dim + 1;
	if (max_cidx >= submat.cols) max_cidx = 0;


	Mat sortidxmat;
	cv::sortIdx(submat.col(max_cidx), sortidxmat, CV_SORT_EVERY_COLUMN + CV_SORT_ASCENDING);
	//cout << "idx height " << sortidxmat.size().height << "idx type" << sortidxmat.type() << endl;

	Mat tempmat;// = Mat::zeros(submat.size(), submat.type());
	datamat.copyTo(tempmat);
	//cout<<"idx size " << tempmat.size() << "idx type" << tempmat.type() << endl;
	int division = 1;
	float value = submat.at<float>(rows / 2, max_cidx);
	for (int i = 0; i < rows; i++)
	{
		//cout << "now row i is:" <<i<< endl;
		float *Ti = tempmat.ptr<float>(i+ldb);
		int ci = sortidxmat.at<int>(i, 0);
		const float *Mi = submat.ptr<float>(ci);
		for (int j = 0; j < cols; j++)
		{
			Ti[j] = Mi[j];
			if (j == max_cidx && division == 1 && Mi[j] > value)
				division = i;
		}
	}
	//this->datamat = tempmat;
	tempmat.copyTo(datamat);
	node->dim = max_cidx;
	node->value = value;

	node->left = iter_constraint(submat.rowRange(0, division), ldb, ldb+division,max_cidx);
	node->right = iter_constraint(submat.rowRange(division, udb - ldb), ldb+division, udb, max_cidx);

	return node;
}

void kdtree::nearest_match(Mat queryMat, vector<DMatch> &matcher)
{
	int qRows = queryMat.rows;
	int qCols = queryMat.cols;
	int j = 0;
	for (int i = 0; i < qRows; i++)
	{
		priority_queue<priorNode, vector<priorNode>, smaller>pior_que;
		float *Qi = queryMat.ptr<float>(i);
		kdnode *node = root;
		double dist2 = 999999;
		while (node)
		{
			int majorDim = node->dim;
			double diff = double(Qi[majorDim] - node->value);
			//dist2 = min(dist2, SQ(diff));
			dist2 = sqrt(SQ(diff));
			//cout <<"dist 2 : "<< dist2 << endl;
			priorNode pnode(majorDim, dist2);
			pnode.kd_node = node;
			pior_que.push(pnode);
			//cout << "idx " << majorDim <<" diff"<<diff<< " ldb" << node->lower_data_bound << " udb" << node->upper_data_bound << endl;
			if (diff<=0)
			{
				//cout<<"min of: "<< min(1, 2);
				j = node->lower_data_bound;
				node = node->left;
			}
			else
			{
				j = node->lower_data_bound;
				node = node->right;
			}
		}
		//cout << "now i is: " << i << endl;
		DMatch match(i, j, 0);
		double min_distance = norm(queryMat.row(i), datamat.row(j));
		int loop_count = 0;
		while (!pior_que.empty()||loop_count<0)
		{
			loop_count++;
			//cout << "idx " << pior_que.top().idx << " dist2 " << pior_que.top().val << " majorDim" << pior_que.top().kd_node->dim <<" ldb:"<<pior_que.top().kd_node->lower_data_bound<<" rdb:"<<pior_que.top().kd_node->upper_data_bound<< endl;
			kdnode *kd_node = pior_que.top().kd_node;
			if (min_distance > pior_que.top().val)
			{
				double temp_dist = 0;
				for (int j = kd_node->lower_data_bound; j < kd_node->upper_data_bound; j++)
				{
					temp_dist=norm(queryMat.row(i), datamat.row(j));
					if (temp_dist < min_distance)
					{
						min_distance = temp_dist;
						match.trainIdx = j;
					}
				}
			}
			pior_que.pop();
		}
		match.distance = min_distance;
		matcher.push_back(match);
	}
}

void kdtree::easy_match(Mat queryMat, vector<DMatch>& matcher)
{
	int qRows = queryMat.rows;
	int qCols = queryMat.cols;
	double temp_dist = 0;
	
	
	for (int i = 0; i < qRows; i++)
	{
		DMatch match(i, 0, 0);
		double min_dist = 9999;
		//float *Qi = queryMat.ptr<float>(i);
		//float *Di = queryMat.ptr<float>(i);
		for (int j = 0; j < datamat.rows; j++)
		{
			temp_dist = norm(queryMat.row(i), datamat.row(j),NORM_L2);
			//cout <<"i:"<<i<<" j:"<<j<<" dist:"<< temp_dist << endl;
			if (temp_dist < min_dist)
			{
				min_dist = temp_dist;
				match.trainIdx = j;
				match.distance = min_dist;
			}
		}
		matcher.push_back(match);
	}
}

void kdtree::easy_match(Mat queryMat, Mat TrainMat, vector<DMatch>& matcher)
{
	int qRows = queryMat.rows;
	int qCols = queryMat.cols;
	double temp_dist = 0;


	for (int i = 0; i < qRows; i++)
	{
		DMatch match(i, 0, 0);
		double min_dist = 9999;
		//float *Qi = queryMat.ptr<float>(i);
		//float *Di = queryMat.ptr<float>(i);
		for (int j = 0; j < TrainMat.rows; j++)
		{
			temp_dist = norm(queryMat.row(i), TrainMat.row(j), NORM_L2);
			//cout <<"i:"<<i<<" j:"<<j<<" dist:"<< temp_dist << endl;
			if (temp_dist < min_dist)
			{
				min_dist = temp_dist;
				match.trainIdx = j;
				match.distance = min_dist;
			}
		}
		matcher.push_back(match);
	}
}

// 画匹配的特征点对
void drawMatch(const string &src, const string &obj, vector<Point2f> &srcPoints, vector<Point2f> &dstPoints, String imgname){

    Mat srcColorImage = imread(src);
    Mat dstColorImage = imread(obj);

	// Create a image for displaying mathing keypoints
	Size sz = Size(srcColorImage.size().width*2, srcColorImage.size().height);
	Mat matchingImage = Mat::zeros(sz, CV_8UC3);

	if (srcColorImage.size() == dstColorImage.size())
	{
		// Draw camera frame
		Mat roi1 = Mat(matchingImage, Rect(0, 0, srcColorImage.size().width, srcColorImage.size().height));
		srcColorImage.copyTo(roi1);
		// Draw original image
		Mat roi2 = Mat(matchingImage, Rect(srcColorImage.size().width, 0, dstColorImage.size().width, dstColorImage.size().height));
		dstColorImage.copyTo(roi2);

		// Draw line between nearest neighbor pairs
		for (int i = 0; i < (int)srcPoints.size(); ++i) {
			Point2f pt1 = srcPoints[i];
			Point2f pt2 = dstPoints[i];
			Point2f from = pt1;
			Point2f to = Point(srcColorImage.size().width + pt2.x, pt2.y);
			line(matchingImage, from, to, Scalar(0, 255, 255));
		}
	}

	else
	{
		// Create a image for displaying mathing keypoints
		Size sz = Size(srcColorImage.size().width + dstColorImage.size().width, srcColorImage.size().height + dstColorImage.size().height);
		Mat matchingImage = Mat::zeros(sz, CV_8UC3);

		// Draw camera frame
		Mat roi1 = Mat(matchingImage, Rect(0, 0, srcColorImage.size().width, srcColorImage.size().height));
		srcColorImage.copyTo(roi1);
		// Draw original image
		Mat roi2 = Mat(matchingImage, Rect(srcColorImage.size().width, srcColorImage.size().height, dstColorImage.size().width, dstColorImage.size().height));
		dstColorImage.copyTo(roi2);

		// Draw line between nearest neighbor pairs
		for (int i = 0; i < (int)srcPoints.size(); ++i) {
			Point2f pt1 = srcPoints[i];
			Point2f pt2 = dstPoints[i];
			Point2f from = pt1;
			Point2f to = Point(srcColorImage.size().width + pt2.x, srcColorImage.size().height + pt2.y);
			line(matchingImage, from, to, Scalar(0, 255, 255));
		}
		
		resize(matchingImage, matchingImage, Size(matchingImage.cols / 2, matchingImage.rows / 2));
	}

	// Display matching image
    //namedWindow( "Display frame",CV_WINDOW_AUTOSIZE);
    imshow(imgname, matchingImage);
	cout << "activate the \"" << imgname << "\" image and press any key to continue" << endl;
	cvWaitKey(-1);
	//cvWaitKey(30);
}

Mat findInliers(vector<KeyPoint> &qKeypoints, vector<KeyPoint> &objKeypoints, vector<DMatch> &matches, const string &imgfn, const string &objFileName){
    // 获取关键点坐标
    vector<Point2f> queryCoord;
    vector<Point2f> objectCoord;
	for (int i = 0; i < matches.size(); i++){
        queryCoord.push_back((qKeypoints[matches[i].queryIdx]).pt);
        objectCoord.push_back((objKeypoints[matches[i].trainIdx]).pt);
		//cout << "queryIdx: " << matches[i].queryIdx << " trainIdx: " << matches[i].trainIdx << " distance: " << matches[i].distance << endl;
    }
    // 使用自定义的函数显示匹配点对
    drawMatch(imgfn, objFileName, queryCoord, objectCoord,"original SIFT matching");
    
    // 计算homography矩阵
    Mat mask;
    vector<Point2f> queryInliers;
    vector<Point2f> sceneInliers;
    //Mat H = findFundamentalMat(queryCoord, objectCoord, mask, CV_FM_RANSAC);
	//Mat H = findFundamentalMat(queryCoord, objectCoord, mask, CV_FM_8POINT);

	//用自编RANSAC方法 计算fundamental Matrix
	Mat F = findFunMat(queryCoord, objectCoord,mask,METHOD_RANSAC);
	//checkMat(queryCoord, objectCoord, H,mask,true);
   // Mat H = findHomography( queryCoord, objectCoord, CV_RANSAC, 10, mask);
    int inliers_cnt = 0, outliers_cnt = 0;
    for (int j = 0; j < mask.rows; j++){
        if (mask.at<uchar>(j) == 1){
            queryInliers.push_back(queryCoord[j]);
            sceneInliers.push_back(objectCoord[j]);
            inliers_cnt++;
        }else {
            outliers_cnt++;
        }
    }
    //显示剔除误配点对后的匹配点对
    drawMatch(imgfn, objFileName, queryInliers, sceneInliers,"matching by RANSAC");
	return F;
}

Mat findFunMat(vector<Point2f> queryCoord, vector<Point2f> objectCoord,Mat& mask, int method,bool normed)
{
	Mat F = Mat::zeros(Size(3, 3), CV_64F);
	mask = Mat::zeros(Size(1, queryCoord.size()), CV_8U);
	Mat C1 = Mat::eye(3, 3, CV_64F);
	Mat C2 = Mat::eye(3, 3, CV_64F);
	int N = queryCoord.size();
	Mat X = Xconstruction(queryCoord, objectCoord, C1, C2, normed);
	Mat w, u, vt;
	if (method == METHOD_8POINTS)
	{
		SVD::compute(X, w, u, vt);
		u = u.t();
		double *ui = u.ptr<double>(8);
		double *Fi = F.ptr<double>(0);
		for (int i = 0; i < 9; i++)
		{
			Fi[i] = ui[i] / ui[8];
		}
		//SVD::compute(F, w, u, vt);
		//cout << "w is:" << w << " " << w.at<double>(2) << endl;
		////enforce E consistency
		//Mat sigma = (Mat_<double>(3, 3) << w.at<double>(0), 0, 0, w.at<double>(1), 0, 0, 0, 0, 0);
		//cout << "sigma" << sigma << endl;
		//F = u*sigma*vt;
		F = F / F.at<double>(2, 2);
		Mat tempMask = F.reshape(0, 1)*X;
		cout << tempMask << endl;
		double *tm = tempMask.ptr<double>(0);
		cout << "F is:" << F << endl;
		for (int j = 0; j < tempMask.cols; j++) {
			if (abs(tm[j]) < 0.3)
			{
				mask.at<uchar>(j) = 1;
			}
		}
	}
	else if (method = METHOD_RANSAC)
	{
		double epslon = 0.0000001;
		int count = 0, maxcount=0;
		int iteration = 200;
		Mat bestF;
		Mat X = Xconstruction(queryCoord, objectCoord, C1, C2, normed);
		Mat X_T = X.t();
		Mat tempX = Mat::zeros(9, 9, CV_64F);
		double *pointptr1, *pointptr2;
		int j = 0;

		for (int iter = 0; iter < iteration; iter++)
		{
			count = 0;
			for (int i = 0; i < 9; i++)
			{
				j = rand() % N;
				pointptr1 = tempX.ptr<double>(i);
				pointptr2 = X_T.ptr<double>(j);
				for (int k = 0; k < 9; k++)
					pointptr1[k] = pointptr2[k];
			}
			tempX = tempX.t();
			SVD::compute(tempX, w, u, vt);
			u = u.t();
			double *ui = u.ptr<double>(8);
			double *Fi = F.ptr<double>(0);
			for (int i = 0; i < 9; i++)
			{
				Fi[i] = ui[i];// / ui[8];
			}
			//F = F / F.at<double>(2, 2);
			Mat tempMask = F.reshape(0, 1)*X;
			pointptr1 = tempMask.ptr<double>(0);
			for (int j = 0; j < tempMask.cols; j++) {
				if (abs(pointptr1[j]) < epslon)
				{
					count++;
				}
			}
			if (count > maxcount)
			{
				bestF = F.clone();
				maxcount = count;
			}
		}
		Mat tempMask = bestF.reshape(0, 1)*X;
		pointptr1 = tempMask.ptr<double>(0);
		for (int j = 0; j < tempMask.cols; j++) {
			if (abs(pointptr1[j]) < epslon)
			{
				mask.at<uchar>(j) = 1;
			}
		}
	}
	F = C1.t()*F*C2;
	F = F / F.at<double>(2, 2);
	return F;
}

Mat checkMat(vector<Point2f> queryCoord, vector<Point2f> objectCoord, Mat H,Mat mask, bool normed)
{
	Mat C1 = Mat::eye(3, 3, CV_64F);
	Mat C2 = Mat::eye(3, 3, CV_64F);
	Mat X = Xconstruction(queryCoord, objectCoord, C1, C2, normed);

	Mat F = Mat::zeros(Size(1, 9), CV_64F);
	double *Hi = H.ptr<double>(0);
	double *Fi = F.ptr<double>(0);
	for (int i = 0; i < 9; i++)
	{
		Fi[i] = Hi[i];
	}
	Mat result;
	result = X*F;
	for (int j = 0; j < result.rows; j++) {
		cout << "j=" << j << " result=" << result.at<double>(j) <<"	maks[j]=" << int(mask.at<uchar>(j)) << endl;
	}

	for (int i = 0; i < 3; i++)
	{
		for (int j = 0; j < 3; j++)
		{
			std::cout << H.at<double>(i, j) << "	";
		}
		std::cout << endl;
	}
	return F;
}

void invTMat(Mat & C)
{
	double s = 1.0 / C.at<double>(0, 0);
	C.at<double>(0, 0) = s;
	C.at<double>(1, 1) = s;
	C.at<double>(0, 2) *= -s;
	C.at<double>(1, 2) *= -s;
}

Mat Xconstruction(vector<Point2f> queryCoord, vector<Point2f> objectCoord,Mat& C1,Mat& C2, bool normed)
{
	Mat X = Mat::zeros(queryCoord.size(),9, CV_64F);
	if (normed == false)
	{
		for (int i = 0; i < queryCoord.size(); i++)
		{
			//cout << "query" << queryCoord[i] << "object" << objectCoord[i] << endl;
			double *Xi = X.ptr<double>(i);
			Xi[0] = queryCoord[i].x * objectCoord[i].x;
			Xi[1] = queryCoord[i].x * objectCoord[i].y;
			Xi[2] = queryCoord[i].x;
			Xi[3] = queryCoord[i].y * objectCoord[i].x;
			Xi[4] = queryCoord[i].y * objectCoord[i].y;
			Xi[5] = queryCoord[i].y;
			Xi[6] = objectCoord[i].x;
			Xi[7] = objectCoord[i].y;
			Xi[8] = 1;
			//cout << " " << Xi[0] << " " << Xi[1] << " " << Xi[2] << " " << Xi[3] << " " << Xi[4] << " " << Xi[5] << " " << Xi[6] << " " << Xi[7] << " " << Xi[8] << endl;
		}
	}

	else if (normed == true)
	{
		int N = queryCoord.size();
		Mat queryMat = Mat::zeros(Size(1, N), CV_64FC2);
		Mat objMat = Mat::zeros(Size(1, N), CV_64FC2);
		double *QMi = queryMat.ptr<double>(0);
		double *OBi = objMat.ptr<double>(0);
		for (int i = 0; i < N; i++)
		{
			QMi[2 * i + 0] = queryCoord[i].x;
			QMi[2 * i + 1] = queryCoord[i].y;
			OBi[2 * i + 0] = objectCoord[i].x;
			OBi[2 * i + 1] = objectCoord[i].y;
		}
		Scalar mean, std;	
		
		meanStdDev(queryMat, mean, std);
		double S1 = sqrt(2 / (pow(std[0], 2) + pow(std[1], 2)));
		C1.at <double>(0, 2) = -mean[0];
		C1.at <double>(1, 2) = -mean[1];
		C1.at <double>(2, 2) = 1.0/S1;		
		C1 = S1*C1;
		//cout << C1 << endl;
		Mat new3queryMat = Mat::zeros(3, N, CV_64FC1);
		double *pi = new3queryMat.ptr<double>(0);
		for (int i = 0; i < N; i++)
		{
			pi[i]     = queryCoord[i].x;
			pi[N + i] = queryCoord[i].y;
			pi[2*N+i] = 1;
		}
		Mat X1 = C1*new3queryMat;
		X1=X1.t();

		meanStdDev(objMat, mean, std);
		double S2 = sqrt(2 / (pow(std[0], 2) + pow(std[1], 2)));
		C2.at <double>(0, 2) = -mean[0];
		C2.at <double>(1, 2) = -mean[1];
		C2.at <double>(2, 2) = 1.0/S2;
		C2 = S2*C2;
		//cout << C2 << endl;
		Mat new3objMat = Mat::zeros(3, N, CV_64FC1);
		pi = new3objMat.ptr<double>(0);
		for (int i = 0; i < N; i++)
		{
			pi[i] = objectCoord[i].x;
			pi[N + i] = objectCoord[i].y;
			pi[2 * N + i] = 1;
		}
		Mat X2 = C2*new3objMat;
		X2 = X2.t();

		for (int i = 0; i < queryCoord.size(); i++)
		{
			//cout << "query" << queryCoord[i] << "object" << objectCoord[i] << endl;
			double *Xi = X.ptr<double>(i);
			QMi = X1.ptr<double>(i);
			OBi = X2.ptr<double>(i);
			Xi[0] = QMi[0] * OBi[0];
			Xi[1] = QMi[0] * OBi[1];
			Xi[2] = QMi[0];
			Xi[3] = QMi[1] * OBi[0];
			Xi[4] = QMi[1] * OBi[1];
			Xi[5] = QMi[1];
			Xi[6] = OBi[0];
			Xi[7] = OBi[1];
			Xi[8] = 1;
			//cout << " " << Xi[0] << " " << Xi[1] << " " << Xi[2] << " " << Xi[3] << " " << Xi[4] << " " << Xi[5] << " " << Xi[6] << " " << Xi[7] << " " << Xi[8] << endl;
		}		
		
		//normalize(queryMat, queryMat, N*sqrt(2), NORM_L2);
		//normalize(objMat, objMat, N*sqrt(2), NORM_L2);
		//for (int i = 0; i < queryCoord.size(); i++)
		//{
		//	//cout << "query" << queryCoord[i] << "object" << objectCoord[i] << endl;
		//	double *Xi = X.ptr<double>(i);
		//	QMi = queryMat.ptr<double>(i);
		//	OBi = objMat.ptr<double>(i);
		//	Xi[0] = QMi[0] * OBi[0];
		//	Xi[1] = QMi[0] * OBi[1];
		//	Xi[2] = QMi[0];
		//	Xi[3] = QMi[1] * OBi[0];
		//	Xi[4] = QMi[1] * OBi[1];
		//	Xi[5] = QMi[1];
		//	Xi[6] = OBi[0];
		//	Xi[7] = OBi[1];
		//	Xi[8] = 1;
		//	//cout << " " << Xi[0] << " " << Xi[1] << " " << Xi[2] << " " << Xi[3] << " " << Xi[4] << " " << Xi[5] << " " << Xi[6] << " " << Xi[7] << " " << Xi[8] << endl;
		//}
	}
	return X.t();
}

void BFmatch(Mat queryMat, Mat TrainMat, vector<DMatch>& matcher)
{
	int qRows = queryMat.rows;
	int qCols = queryMat.cols;
	double temp_dist = 0;


	for (int i = 0; i < queryMat.rows; i++)
	{
		DMatch match(i, 0, 0);
		double min_dist = 9999;
		//float *Qi = queryMat.ptr<float>(i);
		//float *Di = queryMat.ptr<float>(i);
		for (int j = 0; j < TrainMat.rows; j++)
		{
			temp_dist = norm(queryMat.row(i), TrainMat.row(j), NORM_L2);
			//cout <<"i:"<<i<<" j:"<<j<<" dist:"<< temp_dist << endl;
			if (temp_dist < min_dist)
			{
				min_dist = temp_dist;
				match.trainIdx = j;
				match.distance = min_dist;
			}
		}
		matcher.push_back(match);
	}
}




