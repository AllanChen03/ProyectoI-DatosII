#include <iostream>
#include <cstdlib>
#include <string>
#include <vector>
#include <ctime>
#include <cmath>
#include "imageprocessing.hpp"
#include <opencv2/opencv_modules.hpp>
#include <opencv2/photo.hpp>
#include <opencv2/opencv.hpp>
#include <opencv2/core/core.hpp>
#include <opencv2/core.hpp>
using namespace std;
using namespace cv;

// Filtro de Gaussian Blur
int imageprocessing::gaussian_blur(Mat &image_ptr, Mat &image_out, int rows, int cols){
    //Try para verificar qeu se cumple el proceso
    try{
        //Se aplica el filtro Gausssian Blur con la formula de openCV
        GaussianBlur(image_ptr, image_out, Size(15, 15), 0);
        //Retorna 0 en caso de que funcione
        return 0;
    }
    catch (exception& exc){
        //Retorna -1 en caso de que no funcione
        return -1;
    }
}
// Filtro de Escala de grices
int imageprocessing::gray_scale(Mat &image_ptr, Mat &image_out, int rows, int cols){

    //Try para verificar qeu se cumple el proceso
    try{
        //For anidado para recorrer la matris y aplicar filtro
        for (size_t i = 0; i < rows; i++)
        {
            for (size_t j = 0; j < cols; j++)
            {
                //variable ,qeu optiene los pixeles
                Vec3b pixel = image_ptr.at<Vec3b>(i, j);

                uchar B = pixel[0];
                uchar G = pixel[1];
                uchar R = pixel[2];
                //promedio entre los RGB para el filtro escala de grices
                image_out.at<uchar>(i, j) = (B + G + R) / 3;
            }
        }
        //Devuelve 0 si funciona
        return 0;
    }
    catch (exception& exc){
        //Devuelve uno si no funciona
        return -1;
    }
}

//Filtro Gamma Correction
int imageprocessing::gamma_correction_(Mat &image_ptr, Mat &image_out, float fGamma){
    //Try para verificar qeu se cumple el proceso
    try{
        //Pixel en un valor entre 0 y 255
        unsigned char lut[255];
        for (int i = 0; i < 255; i++)
        {
            //Aplica la ecuacion de corrección gamma
            lut[i] = saturate_cast<uchar>(pow((float)(i / 255.0), fGamma) * 255.0f);
        }
        //Clona la imagen en una nueva
        image_out = image_ptr.clone();
        //Selecciona los canales de la imagen que va a modificar
        const int channels = image_out.channels();

        switch (channels)
        {
        case 1:
        {
            MatIterator_<uchar> it, end;
            for (it = image_out.begin<uchar>(), end = image_out.end<uchar>(); it != end; it++)
            *it = lut[(*it)];
            break;
        }
        case 3:
        {
            MatIterator_<Vec3b> it, end;
            for (it = image_out.begin<Vec3b>(), end = image_out.end<Vec3b>(); it != end; it++)
            {
                //Se le aplica a cada canal la formula
                (*it)[0] = lut[((*it)[0])];
                (*it)[1] = lut[((*it)[1])];
                (*it)[2] = lut[((*it)[2])];
            }
            break;
        }
    }
        //Retorna 0 en caso de que funcione
        return 0;
    }
    catch (exception& exc){
        //Retorna -1 en caso de que no funcione
        return -1;
    }
}

//Filtro Correccion de brillo
int imageprocessing::bright_control(Mat &image_ptr, Mat &image_out, int opc){
    //Try para verificar qeu se cumple el proceso
    try{ 
        //Selecionamos cual congrol de brillo se usara 
        switch (opc)
        {
         //Caso de mas brillo
        case 1:
        {
            image_ptr.convertTo(image_out, -1, 1, 100);
            break;
        }
        //caso de menos brillo
        case -1:
        {
            image_ptr.convertTo(image_out, -1, 1, -100);
            break;
        }
        }
        //Retorna 0 en caso de que funcione
        return 0;
    }
    catch (exception& exc){
        //Retorna -1 en caso de que no funcione
        return -1;
    }
}




