#-------------------------------------------------
#
# Project created by QtCreator 2020-06-17T19:32:15
#
#-------------------------------------------------

QT += core gui


CONFIG += plugin

CONFIG(debug, debug|release) {
    TARGET = qblpd
}
CONFIG(release, debug|release) {
    TARGET = qblp
}

TEMPLATE = lib

SOURCES += qblpplugin.cpp \
    qblphandler.cpp \
    squishlib/alpha.cpp \
    squishlib/clusterfit.cpp \
    squishlib/colourblock.cpp \
    squishlib/colourfit.cpp \
    squishlib/colourset.cpp \
    squishlib/maths.cpp \
    squishlib/rangefit.cpp \
    squishlib/singlecolourfit.cpp \
    squishlib/squish.cpp

HEADERS += qblpplugin.h \
    qblphandler.h \
    squishlib/alpha.h \
    squishlib/clusterfit.h \
    squishlib/colourblock.h \
    squishlib/colourfit.h \
    squishlib/colourset.h \
    squishlib/maths.h \
    squishlib/rangefit.h \
    squishlib/simd.h \
    squishlib/simd_float.h \
    squishlib/simd_sse.h \
    squishlib/simd_ve.h \
    squishlib/singlecolourfit.h \
    squishlib/squish.h
OTHER_FILES += \
    QBlpPlugin.json \

INCLUDEPATH += squishlib/

target.path = $$[QT_INSTALL_PLUGINS]/imageformats
INSTALLS += target
