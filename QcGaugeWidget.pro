#-------------------------------------------------
#
# Project created by QtCreator 2016-01-19T10:38:03
#
#-------------------------------------------------

QT += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

DEFINES += QCGAUGEWIDGET_COMPILE_LIBRARY
TEMPLATE = lib
CONFIG += shared debug_and_release build_all
VERSION = 1.0.0

TARGET = QcGaugeWidget

DEFINES += QCGAUGEWIDGET_LIBRARY

CONFIG(debug, debug|release) {
  TARGET = $$join(TARGET,,,d)# if compiling in debug mode, append a "d" to the library name
  QMAKE_TARGET_PRODUCT = "QcGaugeWidget (debug mode)"
  QMAKE_TARGET_DESCRIPTION = "gauge library for Qt (debug mode)"
} else {
  QMAKE_TARGET_PRODUCT = "QcGaugeWidget"
  QMAKE_TARGET_DESCRIPTION = "gauge library for Qt"
}

SOURCES += qcgaugewidget.cpp

HEADERS += qcgaugewidget.h\
        qcgaugewidget_global.h

unix {
    target.path = /usr/lib
    INSTALLS += target
}
