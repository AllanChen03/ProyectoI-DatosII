#ifndef IMAGEPROCESSING
#define IMAGEPROCESSING

#include <iostream>
#include <cstdlib>
#include <string>
#include <vector>
#include <ctime>
#include <cmath>
#include <opencv2/opencv_modules.hpp>
#include <opencv2/photo.hpp>
#include <opencv2/opencv.hpp>
#include <opencv2/core/core.hpp>
#include <opencv2/core.hpp>

using namespace cv;
using namespace std;

class imageprocessing {
    public:
    int gaussian_blur(Mat &image_ptr, Mat &image_out, int rows, int cols);
    int gray_scale(Mat &image_ptr, Mat &image_out, int rows, int cols);
    int gamma_correction_(Mat &image_ptr, Mat &image_out, float fGamma);
    int bright_control(Mat &image_ptr, Mat &image_out, int opc);
};
#endif
