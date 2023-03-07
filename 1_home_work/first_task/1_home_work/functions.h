#ifndef FUNCTIONS_H
#define FUNCTIONS_H

#include <QObject>

class Functions : public QObject
{
    Q_OBJECT
public:
    explicit Functions(QObject *parent = nullptr);
    Q_INVOKABLE double first(int a, int b, int c);

signals:
    void anserFound(float anser);
    void anserSecondQml(float anserB);
public slots:
    void culculate(float a, float b, float c);
    void culculateSecond(float ax, float bx, float cx ,float ay, float by, float cy);
};

#endif // FUNCTIONS_H
