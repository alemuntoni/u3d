TEMPLATE = app
CONFIG += c++11
CONFIG -= app_bundle
CONFIG -= qt


SOURCES += \
	main.cpp

LIBS += -L../RTL/ -lIFXCoreStatic
LIBS += -L../IDTF/ -lIDTFConverter


