#ifndef APPCORE_H
#define APPCORE_H

#include <QObject>
#include "persaninfo.h"
#include <QVariantList>
class appCore : public QObject
{
    Q_OBJECT
public:
    explicit appCore(QObject *parent = nullptr);
//    Q_INVOKABLE void print( );
//    Q_INVOKABLE void print(QString name, QString age, QString gender, QString education, QString hobby, QString town, QString info);
    Q_INVOKABLE void print(const QVariantList& args);

signals:

public slots:
};

#endif // APPCORE_H
