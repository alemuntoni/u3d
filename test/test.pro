TEMPLATE = app
CONFIG += c++11
CONFIG -= app_bundle
CONFIG -= qt

INCLUDEPATH += \
	../src/IDTF/

SOURCES += \
	../src/test/main.cpp

linux {
#substitute with the dir where libIDTFConverter has been compiled
LIB_IDTF_CONVERTER_BUILD_DIR=../

LIBS += -L$${LIB_IDTF_CONVERTER_BUILD_DIR} -lIDTFConverter -lIFXCoreStatic -ldl
}


