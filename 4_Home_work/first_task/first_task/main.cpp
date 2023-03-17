#include <QQmlApplicationEngine>
#include <QApplication>
#include <QtCharts>
#include <QQmlContext>

#include "graph.h"

#include <QVector>
#include <QDebug>

#include <vector>
#include <algorithm>
#include <cmath>
#include <cassert>




int main(int argc, char *argv[])
{
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);

    QApplication app(argc, argv);

    Graph graph;
    graph.setColor(QColor(255, 0, 0));
    graph.setName("x values");
    graph.setType(sinus);
    const double min = 0;
    const double max = 5;
    const double step = 0.1;
    const size_t size = std::round((max - min)/step);
    std::vector<double> xValues(size);
    double n = min - step;
    std::generate(xValues.begin(), xValues.end(), [&n, step](){return n+=step;});
    graph.setX(QVector<double>::fromStdVector(xValues));



    QQmlApplicationEngine engine;
    engine.rootContext()->setContextProperty("Graph", &graph);
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));
    if (engine.rootObjects().isEmpty())
        return -1;


    return app.exec();
}

