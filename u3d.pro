TEMPLATE = subdirs

SUBDIRS = \
	IFXCoreStatic \
	IFXCore \
	IDTFConverter

SUBDIRS += test

IFXCoreStatic.subdir = IFXCoreStatic
IFXCore.subdir = IFXCore
IDTFConverter.subdir = IDTFConverter
test.subdir = test

IDTFConverter.depends = IFXCoreStatic
test.depends = IDTFConverter
