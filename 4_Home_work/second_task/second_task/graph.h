#ifndef GRAPH_H
#define GRAPH_H

#include <QObject>
#include <QVector>


class Graph : public QObject
{
    Q_OBJECT
public:
    explicit Graph(QObject *parent = nullptr);
    void setXValues(QVector<double>& x);
    void setYValues(QVector<double>& y);

    Q_INVOKABLE double& getY(int index);
    Q_INVOKABLE double& getX(int index);
    Q_INVOKABLE int count();

signals:

public slots:
private:
    QVector<double> xValues;
    QVector<double> yValues;
};

#endif // GRAPH_H
