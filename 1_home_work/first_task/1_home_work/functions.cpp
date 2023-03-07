#include "functions.h"
#include <math.h>
#include <QDebug>
Functions::Functions(QObject *parent) : QObject(parent)
{

}

double Functions::first(int a, int b, int c)
{
    double p = (a+ b + c)/2.0;
    double anser = p*(p - a)*(p - b)*(p -c);
    anser = std::sqrt(anser);
    emit anserFound(anser);
    return anser;
}

void Functions::culculate(float a, float b, float c)
{
    float p = (a+ b + c)/2.0;
    float anser = p*(p - a)*(p - b)*(p -c);
    anser = std::sqrt(anser);
    emit anserFound(anser);
}

void Functions::culculateSecond(float ax, float bx, float cx, float ay, float by, float cy)
{
    float anser =(bx - ax)*(cy - ay) - (cx - ax)*(by - ay);
    anser = std::abs(anser)/2;

    emit anserSecondQml(anser);
}
