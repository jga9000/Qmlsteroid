#include <QtGui/QApplication>
#include <QtDeclarative/QDeclarativeView>
#include <QtDeclarative/QDeclarativeContext>
#include <QtDeclarative/QDeclarativeEngine>
#include <QDebug>
#include "game.h"

int main(int argc, char *argv[])
{
    qDebug() << "Application main";
    QApplication app(argc, argv);
    QDeclarativeView canvas;

    GameData *game = new GameData();

#ifdef Q_OS_SYMBIAN
    canvas.setResizeMode(QDeclarativeView::SizeRootObjectToView);
#endif

    canvas.setAttribute(Qt::WA_LockPortraitOrientation, true);

    canvas.engine()->rootContext()->setContextObject(game);
    //canvas.engine()->addImportPath("qrc:/"");
    canvas.rootContext()->setContextProperty("gameData", game);

    canvas.setSource(QUrl::fromLocalFile(QString("start.qml")));
    QObject::connect(canvas.engine(), SIGNAL(quit()), &app, SLOT(quit()));

    qDebug() << "start.qml executed";

#ifdef Q_OS_SYMBIAN
    canvas.showFullScreen();
#else
    canvas.setGeometry(QRect(0, 0, 360, 640));
    canvas.show();
#endif
    qDebug() << "canvas show";

    return app.exec();
}
