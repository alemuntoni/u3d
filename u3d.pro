TEMPLATE = subdirs

SUBDIRS = \
	IFXCoreStatic \
	IFXCore \
	IFXExporting \
	IFXScheduling \
	IDTFConverter

SUBDIRS += test

IFXCoreStatic.subdir = IFXCoreStatic
IFXCore.subdir = IFXCore
IFXExporting.subdir = IFXExporting
IFXScheduling.subdir = IFXScheduling
IDTFConverter.subdir = IDTFConverter
test.subdir = test

IDTFConverter.depends = IFXCoreStatic
test.depends = IDTFConverter
