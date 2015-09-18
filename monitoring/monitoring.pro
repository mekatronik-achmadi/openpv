#-------------------------------------------------
#
# Project created by QtCreator 2015-09-18T04:11:04
#
#-------------------------------------------------

QT       += core gui serialport

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = monitoring
TEMPLATE = app


SOURCES += main.cpp\
        openpv.cpp

HEADERS  += openpv.h

FORMS    += openpv.ui

LIBS    += -lqwt
