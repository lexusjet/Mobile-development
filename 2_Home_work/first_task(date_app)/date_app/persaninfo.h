#ifndef PERSANINFO_H
#define PERSANINFO_H

#include <QObject>

class PersanInfo : public QObject
{
    Q_OBJECT
    Q_PROPERTY(QString name READ getName WRITE setName)
    Q_PROPERTY(QString age READ getAge WRITE setAge)
    Q_PROPERTY(QString gender READ getGender WRITE setGender)
    Q_PROPERTY(QString education READ getEducation WRITE setEducation)
    Q_PROPERTY(QString hobby READ getHobby WRITE setHobby)
    Q_PROPERTY(QString town READ getTown WRITE setTown)
    Q_PROPERTY(QString info READ getInfo WRITE setInfo)
public:
    explicit PersanInfo(QObject *parent = nullptr);

    QString getName() const;
    void setName(const QString &value);

    QString getAge() const;
    void setAge(const QString &value);

    QString getGender() const;
    void setGender(const QString &value);

    QString getEducation() const;
    void setEducation(const QString &value);

    QString getHobby() const;
    void setHobby(const QString &value);

    QString getTown() const;
    void setTown(const QString &value);

    QString getInfo() const;
    void setInfo(const QString &value);

signals:

private:
    QString name;
    QString age;
    QString gender;
    QString education;
    QString hobby;
    QString town;
    QString info;
public slots:


};

#endif // PERSANINFO_H
