#ifndef GRAPH_H
#define GRAPH_H

#include <QObject>
#include <QColor>
#include <QString>
#include <QVector>
//Добавьте на стороне C++ класс с описанием метрик графика:
// +цвет,
// +название параметра,
// +enum с типом графика,
// +вектор значений по x, возрастающий от 0 до 5 с шагом 0.1,
// +вектор значений по y, который будет высчитываться при изменении типа графика

enum GraphType{
    BarSeries,
    ScatterPlot,
    LineSeries,
    PieChart
};


class Graph : public QObject
{
    Q_OBJECT
    Q_PROPERTY(QString name READ getName WRITE setName NOTIFY nameChanged)
    Q_PROPERTY(QColor color READ getColor WRITE setColor NOTIFY colorChanged)
    Q_PROPERTY(QVector<double> xVector READ getX NOTIFY XChanged)
    Q_PROPERTY(QVector<double> yVector READ getY NOTIFY YChanged)
    Q_PROPERTY(GraphType type READ getType WRITE setType)
public:
    explicit Graph(QObject *parent = nullptr);


    QColor getColor() const;
    void setColor(const QColor &value);
    Q_SIGNAL void colorChanged(const QColor& color);

    QString getName() const;
    void setName(const QString &value);
    Q_SIGNAL void nameChanged(const QString& name);



    QVector<double> getX() const;
    void setX(const QVector<double> &value);
    Q_SIGNAL void XChanged(const QVector<double>& name);

    QVector<double> getY() const;
    void setY(const QVector<double> &value);
    Q_SIGNAL void YChanged(const QVector<double>& name);

    GraphType getType() const;
    void setType(const GraphType &value);

private:
    QColor color;
    QString name;
    QVector<double> xVector;
    QVector<double> yVector;
    GraphType type;

signals:

public slots:
};

#endif // GRAPH_H
