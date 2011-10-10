#include <QtGui/QApplication>
#include "qmlapplicationviewer.h"
#include <QWSServer>

Q_DECL_EXPORT int main(int argc, char *argv[])
{
    QScopedPointer<QApplication> app(createApplication(argc, argv));
    QScopedPointer<QmlApplicationViewer> viewer(QmlApplicationViewer::create());

    QWSServer::setCursorVisible( false );

    viewer->setOrientation(QmlApplicationViewer::ScreenOrientationLockPortrait);
    viewer->setMainQmlFile(QLatin1String("qml/Helloworld/main.qml"));
//    viewer->showExpanded();
    viewer->showFullScreen();
    return app->exec();
}
