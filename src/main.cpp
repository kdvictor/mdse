#include <QGuiApplication>
#include <QQmlEngine>
#include <QQmlComponent>
#include <QQuickWindow>

int main(int argc, char* argv[])
{
    QGuiApplication app(argc,argv);

    //加载qml
    QQmlEngine eng;
    QQmlComponent com(&eng);
    com.loadUrl(QUrl("qrc:/main.qml"));
    if(com.isError())
    {
        qDebug() << com.errorString();
    }

    std::unique_ptr<QQuickWindow> ct(static_cast<QQuickWindow*>(com.create()));
    if(com.isError())
    {
        qDebug() << com.errorString();
    }

    return app.exec();
}
