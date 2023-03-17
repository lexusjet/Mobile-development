#include "graph.h"

Graph::Graph(QObject *parent) : QObject(parent)
{

}

void Graph::setXValues(QVector<double> &x)
{
    xValues = x;
}

double &Graph::getX(int index)
{
    return xValues[index];
}

void Graph::setYValues(QVector<double> &y)
{
    yValues = y;
}

double &Graph::getY(int index)
{
    return yValues[index];
}

int Graph::count()
{
    return xValues.size();
}
