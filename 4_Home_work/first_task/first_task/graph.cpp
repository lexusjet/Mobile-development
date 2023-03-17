#include "graph.h"
#include <math.h>
#include <algorithm>
#include <QVariant>
#include <QtDebug>
#include <QPair>
#include <numeric>
//#include <QtMath>
Graph::Graph(QObject *parent) : QObject(parent)
{
    functions[sinus] = std::function<double(double)>([](double x){return std::sin(x);});
    functions[line] = std::function<double(double)>([](double x){return x;});
    functions[ABS] = std::function<double(double)>([](double x){return std::abs(x - 0.25);});
    functions[sqr] = std::function<double(double)>([](double x){return std::pow(x,2);});
    functions[log_2] = std::function<double(double)>(static_cast<double(*)(double)>(&std::log2));


//    xVector.append(5.6);
//    xVector.append(5.6);
//    xVector.append(5.6);
//    xVector.append(5.6);
//    calculate();
}

QColor Graph::getColor() const
{
    return color;
}

void Graph::setColor(const QColor &value)
{
    color = value;
}

QString Graph::getName() const
{
    return name;
}

void Graph::setName(const QString &value)
{
    name = value;
}

double Graph::getX(int index) const
{
    return xVector[index];
}


void Graph::setX(const QVector<double> &value)
{
    xVector = value;
    calculate();
}

double Graph::getY(int index) const
{
    return yVector[index];
}



void Graph::setY(const QVector<double> &value)
{
    yVector = value;
}

GraphType Graph::getType() const
{
    return type;
}

void Graph::setType(const GraphType &value)
{
    type = value;
}

//Виды графиков: sin(x), y = x, y = |x - 2.5|, y = x^2, y = log2(x). К практическому заданию
//приложите скриншоты графиков.

void Graph::calculate()
{
    yVector.resize(xVector.size());
    std::transform(xVector.begin(),xVector.end(), yVector.begin(), functions[type]);
}


