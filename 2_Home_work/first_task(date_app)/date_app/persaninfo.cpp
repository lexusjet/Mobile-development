#include "persaninfo.h"

PersanInfo::PersanInfo(QObject *parent) : QObject(parent)
{

}

QString PersanInfo::getName() const
{
    return name;
}

void PersanInfo::setName(const QString &value)
{
    name = value;
}

QString PersanInfo::getAge() const
{
    return age;
}

void PersanInfo::setAge(const QString &value)
{
    age = value;
}

QString PersanInfo::getGender() const
{
    return gender;
}

void PersanInfo::setGender(const QString &value)
{
    gender = value;
}

QString PersanInfo::getEducation() const
{
    return education;
}

void PersanInfo::setEducation(const QString &value)
{
    education = value;
}

QString PersanInfo::getHobby() const
{
    return hobby;
}

void PersanInfo::setHobby(const QString &value)
{
    hobby = value;
}

QString PersanInfo::getTown() const
{
    return town;
}

void PersanInfo::setTown(const QString &value)
{
    town = value;
}

QString PersanInfo::getInfo() const
{
    return info;
}

void PersanInfo::setInfo(const QString &value)
{
    info = value;
}



