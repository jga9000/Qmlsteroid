# Input
HEADERS += game.h
SOURCES +=  game.cpp\
            main.cpp

# Additional import path used to resolve QML modules in Creator's code model
QML_IMPORT_PATH =

# Avoid auto screen rotation
DEFINES += ORIENTATIONLOCK

# Please do not modify the following two lines. Required for deployment.
include(qmlapplicationviewer/qmlapplicationviewer.pri)
qtcAddDeployment()
