#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlEngine>
#include <QQmlContext>
#include "functions.h"



int main(int argc, char *argv[])
{

//    qmlRegisterType<Functions>("MapData", 2, 12, "Functions");

    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);

    Functions func;
    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;
    QQmlContext* context = engine.rootContext();
    context->setContextProperty("func", &func);

    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));
    if (engine.rootObjects().isEmpty())
        return -1;


    return app.exec();
    //    const QUrl url(QStringLiteral("qrc:/main.qml"));
//    QObject::connect(&engine, &QQmlApplicationEngine::objectCreated,
//                     &app, [url](QObject* obj, const QUrl& objurl){
//        if(!obj && url == objurl)
//            QCoreApplication::exit(-1);
//        }, Qt::QueuedConnection);
//    engine.load(url);

}
