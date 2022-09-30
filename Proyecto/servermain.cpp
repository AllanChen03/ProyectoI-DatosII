#include <iostream>
#include <cstdlib>
#include <stdio.h>
#include <string>
#include <vector>
#include <ctime>
#include <cmath>
#include <typeinfo>
#include <opencv2/opencv.hpp>
#include <opencv2/opencv_modules.hpp>
#include <opencv2/photo.hpp>
#include <opencv2/core/core.hpp>
#include <opencv2/core.hpp>
#include "imageprocessing.hpp"


using namespace cv;
using namespace std;

void obtener_fragmento(Mat imagen_original, Mat pedazo_recortado, int min_x, int min_y, int max_x, int max_y)
{
    for(int x=0; x<max_x-min_x; x++)
    {
        for(int y=0; y<max_y-min_y; y++)
        {
            pedazo_recortado.at<Vec3b>(y,x)[0]=imagen_original.at<Vec3b>(y,x+min_x)[0];
            pedazo_recortado.at<Vec3b>(y,x)[1]=imagen_original.at<Vec3b>(y,x+min_x)[1];
            pedazo_recortado.at<Vec3b>(y,x)[2]=imagen_original.at<Vec3b>(y,x+min_x)[2];
        }
    }
}

int main()
{
    //variables para las imagenes
    imageprocessing imgs;

    Mat img;
    Mat *ptr_img = &img;
    *ptr_img =  imread("rick.jpeg", 1);

    Mat newimg(img.rows, img.cols, CV_8UC1);  

    //imgs.gamma_correction_(img, newimg, img.rows, img.cols);
    //imgs.gamma_correction_(img, newimg, 2);
    imgs.bright_control(img, newimg, -1);

    imshow("Display Image", newimg);
    waitKey(0);

    return 0; 
}