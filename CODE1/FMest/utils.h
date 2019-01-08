//
//  utils.h
//  sift_asift_match
//
//  Created by willard on 8/21/15.
//  Copyright (c) 2015 wilard. All rights reserved.
//

#ifndef __sift_asift_match__utils__
#define __sift_asift_match__utils__

#include <stdio.h>
#include <vector>
#include <iostream>

#include "opencv/cv.h"
#include "opencv/highgui.h"

#include "opencv2/core/core.hpp"
#include "opencv2/highgui/highgui.hpp"
#include "opencv2/features2d/features2d.hpp"
#include "opencv2/calib3d/calib3d.hpp"
#include "opencv2/imgproc/imgproc.hpp"
#include "opencv2/nonfree/nonfree.hpp"
#include <queue>
using namespace std;
using namespace cv;

#define METHOD_8POINTS 0
#define METHOD_RANSAC 1

//draw the matched points
void drawMatch(const string &src, const string &obj, vector<Point2f> &srcPoints, vector<Point2f> &dstPoints,String imgname);

//the main function that find the points satisfied the fundamation matrix
Mat findInliers(vector<KeyPoint> &qKeypoints, vector<KeyPoint> &objKeypoints, vector<DMatch> &matches, const string &imgfn, const string &objFileName);

//brute-force match for the keypoints
void BFmatch(Mat queryMat, Mat TrainMat, vector<DMatch>& matcher);

//finding the fundamantal matrix two methods are provided, including 8points method and ransac method
Mat findFunMat(vector<Point2f> queryCoord, vector<Point2f> objectCoord,Mat& mask, int method= METHOD_8POINTS, bool normed=true);

//check function
Mat checkMat(vector<Point2f> queryCoord, vector<Point2f> objectCoord, Mat H, Mat mask, bool normed);

//construct the X matrix to be used in matching
Mat Xconstruction(vector<Point2f> queryCoord, vector<Point2f> objectCoord, Mat& C1, Mat& C2, bool normed);
void invTMat(Mat & C);

struct kdnode {
	int dim;
	float value;
	int lower_data_bound;
	int upper_data_bound;
	struct kdnode *left, *right;    /* negative/positive side */
	kdnode(int dim, float value, int ldb, int udb): dim(dim),value(value),lower_data_bound(ldb),upper_data_bound(udb) {}
};


struct priorNode
{
	int idx;
	double val;
	kdnode *kd_node;
	priorNode(int a = 0, double b = 0) : idx(a), val(b) {}
};

struct smaller
{
	bool operator()(priorNode a, priorNode b)
	{
		return a.val>b.val;
	}
};

struct grater
{
	bool operator()(priorNode a, priorNode b)
	{
		return a.val<b.val;
	}
};


class kdtree
{
public:
	int dim;
	struct kdnode *root;
	Mat datamat;
	//priority_queue<priorNode, vector<priorNode>, grater>p_col;
	kdtree(int dim, Mat mat);
	kdnode* iter_constraint(Mat submat,int ldb,int udb,int pre_dim);
	void nearest_match(Mat queryMat, vector<DMatch> &matcher);
	void easy_match(Mat queryMat, vector<DMatch> &matcher);
	void kdtree::easy_match(Mat queryMat, Mat TrainMat, vector<DMatch>& matcher);
};



#endif /* defined(__sift_asift_match__utils__) */


