#include "graph.h"

Graph::Graph(QObject *parent) : QObject(parent)
{

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

QVector<double> Graph::getX() const
{
    return xVector;
}

void Graph::setX(const QVector<double> &value)
{
    xVector = value;
}

QVector<double> Graph::getY() const
{
    return yVector;
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
