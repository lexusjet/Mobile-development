//#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QApplication>
#include <QQmlContext>

#include <QDebug>
#include <QVector>
#include <QPair>

#include <numeric>
#include <math.h>
#include <initializer_list>

#include "graph.h"


QPair<double, double> finde_trend(QVector<double> xValues, QVector<double> yValues);

int main(int argc, char *argv[])
{
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);

    QApplication app(argc, argv);

    std::initializer_list<double> a = {7, 31, 61, 99, 129, 178, 209};
    std::initializer_list<double> b = {13, 10, 9, 10, 12, 20, 26};



    Graph graph;
    QVector<double> xValues = {7, 31, 61, 99, 129, 178, 209};
    QVector<double> yValues = {13, 10, 9, 10, 12, 20, 26};
    graph.setXValues(xValues);
    graph.setYValues(yValues);
    QPair<double, double> coficients(finde_trend(xValues,yValues));
    qDebug()<< coficients;
    assert(coficients.first >= 0.0487 && coficients.second >= 8.466);
    QVector<double> yTrendValues(xValues.size());
    std::transform(xValues.begin(), xValues.end(), yTrendValues.begin(), [coficients](double x){return (x * coficients.first) + coficients.second;});

    Graph graph_trend;
    graph_trend.setXValues(xValues);
    graph_trend.setXValues(yTrendValues);


    QQmlApplicationEngine engine;
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));
    if (engine.rootObjects().isEmpty())
        return -1;

    return app.exec();
}

QPair<double, double> finde_trend(QVector<double> xValues, QVector<double> yValues)
{
    // ìåòîäîì íàèìåíüøèõ êâàäðàòîâ
    //mathprofi.ru/metod_naimenshih_kvadratov.html

    QPair<double, double> anser;

    double sum_x = std::accumulate(xValues.begin(), xValues.end(), 0.0);
    double sum_y = std::accumulate(yValues.begin(), yValues.end(), 0.0);

    double sum_x_squared = std::inner_product(xValues.begin(), xValues.end(), xValues.begin(), 0.0);
    double sum_xy = std::inner_product(xValues.begin(), xValues.end(), yValues.begin(), 0.0);
    double size = xValues.size();



    // |sum_x_squared	 sum_x |  |sum_xy   sum_x |	|sum_x_squared	sum_xy|
    // |	sum_x        size |  |sum_y		size |	|	sum_x		sum_y |
    int d = (sum_x_squared * size) - (sum_x * sum_x);

    if(d != 0)
    {
        anser.first = ((sum_xy * size) - (sum_x * sum_y)) / (d);
        anser.second = ((sum_x_squared * sum_y) - (sum_xy * sum_x)) / (d);
    }
    else
    {
        qDebug()<< "whate";
    }
    return anser;
}
