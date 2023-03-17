#ifndef GRAPH_H
#define GRAPH_H

#include <QObject>
#include <QColor>
#include <QString>
#include <QVector>


#include <functional>
//Добавьте на стороне C++ класс с описанием метрик графика:
// ++цвет,
// ++название параметра,
// +enum с типом графика,
// ++вектор значений по x, возрастающий от 0 до 5 с шагом 0.1,
// +вектор значений по y, который будет высчитываться при изменении типа графика
//Виды графиков: sin(x), y = x, y = |x - 2.5|, y = x^2, y = log2(x). К практическому заданию

enum GraphType{
    sinus,
    line,
    ABS,
    sqr,
    log_2
};


class Graph : public QObject
{
    Q_OBJECT
    Q_PROPERTY(QString name READ getName WRITE setName NOTIFY nameChanged)
    Q_PROPERTY(QColor color READ getColor WRITE setColor NOTIFY colorChanged)
//    Q_PROPERTY(QVector<double> xVector  NOTIFY XChanged)
//    Q_PROPERTY(QVector<double> yVector  NOTIFY YChanged)
    Q_PROPERTY(GraphType type READ getType WRITE setType NOTIFY TypeChanged)
public:
    explicit Graph(QObject *parent = nullptr);


    QColor getColor() const;
    void setColor(const QColor &value);
    Q_SIGNAL void colorChanged(const QColor& color);

    QString getName() const;
    void setName(const QString &value);
    Q_SIGNAL void nameChanged(const QString& name);



    Q_INVOKABLE double getX(int index) const;
    void setX(const QVector<double> &value);
    Q_SIGNAL void XChanged(const QVector<double>& name);

    Q_INVOKABLE double getY(int index) const;
    void setY(const QVector<double> &value);
    Q_SIGNAL void YChanged();

    GraphType getType() const;
    void setType(const GraphType &value);
    Q_SIGNAL void TypeChanged(const GraphType &value);

    Q_INVOKABLE int count(){ return xVector.size();}

private:
    void calculate();

private:
    QColor color;
    QString name;
    QVector<double> xVector;
    QVector<double> yVector;
    GraphType type = sinus;

    std::function<double(double)> functions[5];

signals:

public slots:


};

#endif // GRAPH_H
