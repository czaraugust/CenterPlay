#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include "scriptlauncher.h"
#include <QtCore/QUrl>
#include <QtWebView/QtWebView>
//#include <QWebEngineView>
#include <qtwebengineglobal.h>
#include <QWebEngineCookieStore>

int main(int argc, char *argv[])
{
     qputenv("QT_IM_MODULE", QByteArray("qtvirtualkeyboard"));
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
    QGuiApplication app(argc, argv);
    //QtWebView::initialize();
    QtWebEngine::initialize();




    QQmlApplicationEngine engine;
    engine.rootContext()->setContextProperty("resWidth", 640);
    engine.rootContext()->setContextProperty("resHeight", 480);
    engine.load(QUrl(QLatin1String("qrc:/main.qml")));

    ScriptLauncher launcher;
    QQmlContext *context = engine.rootContext();
    context->setContextProperty("scriptLauncher", &launcher);


    return app.exec();
}
