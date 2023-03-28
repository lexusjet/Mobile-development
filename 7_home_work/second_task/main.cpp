#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QDebug>
#include <QQmlContext>
#include "qmltablemodel.h"


int main(int argc, char *argv[])
{
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);

    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;

    QMLTableModel model;
    model.appendRowElement(QMLTableModel::RowElement{1, "Ivan", "Ivanov", {"Sergey Stepanov", "Egor Potapov"}});
    model.appendRowElement(QMLTableModel::RowElement{2, "Egor", "Svistov", {"Oleg Zarelua","Alexander Zotov", "Elena Ivanova"}});
    model.appendRowElement(QMLTableModel::RowElement{3, "Stepan", "Tok", {"Ivan Ivanov", "Alexander Zotov", "Elena Ivanova"}});

    engine.rootContext()->setContextProperty("mdl", &model);
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));
    if (engine.rootObjects().isEmpty())
        return -1;




    return app.exec();
}
