TEMPLATE = app
CONFIG += c++11
CONFIG -= app_bundle
CONFIG -= qt
TARGET = IDTFTestConverter
#DESTDIR = ../

INCLUDEPATH += \
	../src/IDTF/

SOURCES += \
        ../src/IDTFTest/main.cpp

linux {
#substitute with the dir where libIDTFConverter has been compiled
LIB_IDTF_CONVERTER_BUILD_DIR=../

LIBS += -L$${LIB_IDTF_CONVERTER_BUILD_DIR} -lIDTFConverter -lIFXCoreStatic -ldl
}

macx {
#substitute with the dir where libIDTFConverter has been compiled
LIB_IDTF_CONVERTER_BUILD_DIR=../

LIBS += -L$${LIB_IDTF_CONVERTER_BUILD_DIR} -lIDTFConverter -lIFXCoreStatic -ldl
}


