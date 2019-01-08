
// FMest.cpp : Defines the entry point for the console application.
//
#include"stdafx.h"
#include "opencv2/opencv.hpp"
#include <opencv2/nonfree/nonfree.hpp>//SIFT

#include "opencv2/legacy/legacy.hpp"
#include <vector>

using namespace std;
using namespace cv;

#define FX 535.4
#define FY 539.2
#define CX 320.1
#define	CY 247.6

void main()
{
	Mat srcImg1 = imread("image1.png");
	Mat srcImg2 = imread("image2.png");
	//����SIFT������������
	SiftFeatureDetector siftDetector;//SIFT=SiftFeatureDetector=SiftDescriptorExtractor    ����//����KeyPoint����
	vector<KeyPoint>keyPoints1;
	vector<KeyPoint>keyPoints2;
	//��������
	siftDetector.detect(srcImg1, keyPoints1);
	siftDetector.detect(srcImg2, keyPoints2);
	//����������(�ؼ���)
	Mat feature_pic1, feature_pic2;
	drawKeypoints(srcImg2, keyPoints2, feature_pic2, Scalar::all(-1),DrawMatchesFlags::DRAW_RICH_KEYPOINTS);
	drawKeypoints(srcImg1, keyPoints1, feature_pic1, Scalar::all(-1), DrawMatchesFlags::DRAW_RICH_KEYPOINTS);//��ɫ��������з���
																											 //drawKeypoints(srcImg2, keyPoints2, feature_pic2, Scalar::all(-1), DrawMatchesFlags::DRAW_RICH_KEYPOINTS);
																											 //��ʾԭͼ
	vector<cv::KeyPoint>::iterator itvc;
	cout << "calculating key points" << endl;
	cout<<"Key Point 1 size:"<<keyPoints1.size()<<endl<< "Key Point 2 size:" << keyPoints2.size()<<endl;
	//��ʾ���
	imshow("feature1", feature_pic1);
	imshow("feature2", feature_pic2);

	//BFMatcher matcher(NORM_L2);	
	vector<DMatch> matches;	
	SiftDescriptorExtractor extractor;
	Mat dstImg1, dstImg2;//descriptor
	extractor.compute(srcImg1, keyPoints1, dstImg1);
	extractor.compute(srcImg2, keyPoints2, dstImg2);
	//cout << dstImg1.size() << dstImg2.size() << matches.size()<<endl;
	BFmatch(dstImg1, dstImg2, matches);

	Mat F=findInliers(keyPoints1, keyPoints2, matches, "image1.png", "image2.png");
	cout << "F is: " << endl << F << endl;
	Mat K = (Mat_<double>(3, 3) << FX, 0, CX, 0, FY, CY, 0, 0, 1);
	cout << "K is: " << endl << K << endl;
	Mat E = K.t()*F*K;
	cout << "E is: " << endl << E << endl;
	
	cvWaitKey();	
	cvDestroyAllWindows();

	waitKey(0);
}