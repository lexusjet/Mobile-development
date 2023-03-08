#include "personinfo.h"

PersonInfo::PersonInfo(QObject *parent) : QObject(parent)
{

}

QString PersonInfo::getName() const
{
    return name;
}

void PersonInfo::setName(const QString &value)
{
    name = value;
}

QString PersonInfo::getAge() const
{
    return age;
}

void PersonInfo::setAge(const QString &value)
{
    age = value;
}

QString PersonInfo::getGender() const
{
    return gender;
}

void PersonInfo::setGender(const QString &value)
{
    gender = value;
}

QString PersonInfo::getEducation() const
{
    return education;
}

void PersonInfo::setEducation(const QString &value)
{
    education = value;
}

QString PersonInfo::getHobby() const
{
    return hobby;
}

void PersonInfo::setHobby(const QString &value)
{
    hobby = value;
}

QString PersonInfo::getTown() const
{
    return town;
}

void PersonInfo::setTown(const QString &value)
{
    town = value;
}

QString PersonInfo::getInfo() const
{
    return info;
}

void PersonInfo::setInfo(const QString &value)
{
    info = value;
}
