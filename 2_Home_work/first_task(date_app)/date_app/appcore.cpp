#include "appcore.h"
#include <QtDebug>
appCore::appCore(QObject *parent) : QObject(parent)
{

}

void appCore::print(const QVariantList &args)
{
    for(size_t i = 0; i < args.size(); i++){
        qDebug()<< args.at(i).toString();

    }
}

//void appCore::print(QString name, QString age, QString gender, QString education, QString hobby, QString town, QString info)
//{
//    qDebug()<<name;
//    qDebug()<<age;
//    qDebug()<<gender;
//    qDebug()<<education;
//    qDebug()<<hobby;
//    qDebug()<<town;
//    qDebug()<<info;
////    qDebug()<< persson.getName();
////    qDebug()<< persson.getAge();
////    qDebug()<< persson.getGender();
////    qDebug()<< persson.getTown();
////    qDebug()<< persson.getEducation();
////    qDebug()<< persson.getHobby();
////    qDebug()<< persson.getInfo();
//}
