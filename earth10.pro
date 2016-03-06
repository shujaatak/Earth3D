QT       += core gui widgets

TARGET = earth10
TEMPLATE = app

SOURCES += main.cpp \
    trackball.cpp \
    gshhsdata.cpp \
    skybox.cpp

SOURCES += \
    mainwidget.cpp \
    geometryengine.cpp

HEADERS += \
    mainwidget.h \
    geometryengine.h \
    trackball.h \
    gshhsdata.h \
    gshhs.h \
    skybox.h

RESOURCES += \
    shaders.qrc \
    textures.qrc

CONFIG += c++11

DISTFILES += \
    EarthNormal.png \
    miramar_bk.tga \
    miramar_dn.tga \
    miramar_ft.tga \
    miramar_lf.tga \
    miramar_rt.tga \
    miramar_up.tga \
    miramar_up1.tga \
    earthalpha.png


INCLUDEPATH += $$PWD/SOIL/src
DEPENDPATH += $$PWD/SOIL/src

LIBS += $$PWD/SOIL/lib/libSOIL.a


# I don't know why it does not work and pop up a lot of errors when i write the following
# lopengl32 line anywhere above.
# It perfectly works when i place this line here at the botton of the pro file.
LIBS += -lopengl32
