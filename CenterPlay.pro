QT += qml quick
QT  += core gui
QT += webview
QT += webenginewidgets


TARGET = CenterPlay
TEMPLATE = app

CONFIG += c++11

SOURCES += main.cpp \
    scriptlauncher.cpp

RESOURCES += qml.qrc

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH =

# Default rules for deployment.
include(deployment.pri)

DISTFILES +=

HEADERS += \
    scriptlauncher.h
