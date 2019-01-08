This project is developed by using Visual Studio 2013. The project file is quite big, so this repo only contains some source code ,which is included in FMest direciton.

FMest.cpp
	This is the file where main funcion lies in. This code extracts the key points by opencv SIFT,
	align key points and match the key points by 8-point method and RANSAC method (RANSAC by default)
	and finally calculate the essential matrix therefore.

utils.cpp and util.h
	This is the main library to be used to compute the fundamantal matirx by RANSAC and calculate
	the essential matix therefore. 
	
	the fuctions includes:
	drawMatch(),BFmatch(),findFunMat(),checkMat(),Xconstruction()
	
	the private data structure includes:
	kdnode priorNode