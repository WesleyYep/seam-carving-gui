######################################################################
# Automatically generated by qmake (2.01a) Wed Aug 29 20:28:51 2007
######################################################################

TEMPLATE = app
TARGET = 
DEPENDPATH += . image
INCLUDEPATH += . image
QMAKE_CC = g++
TARGET = SeamCarvingGui
RC_FILE = seam-carving-gui.rc
#QTPLUGIN=qjpeg qgif


# Input
HEADERS += mainwindow.h \
           resize.h \
           image/bmpFormat.h \
           image/bmpReader.h \
           image/bmpWriter.h \
           image/Image.h \
           image/pixbufWriter.h \
           image/pnmReader.h \
           image/yuvReader.h
FORMS += resizewidget.ui
SOURCES += main.cpp \
           mainwindow.cpp \
           resize.c \
           image/bmpReader.c \
           image/bmpWriter.c \
           image/Image.c \
           image/pnmReader.c \
           image/yuvReader.c