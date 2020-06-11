TEMPLATE = subdirs

SUBDIRS = \
	IFXCoreStatic \
	IFXCore \
	IFXExporting \
	IFXScheduling \
	IDTFConverter

SUBDIRS += IDTFTest

IFXCoreStatic.subdir = IFXCoreStatic
IFXCore.subdir = IFXCore
IFXExporting.subdir = IFXExporting
IFXScheduling.subdir = IFXScheduling
IDTFConverter.subdir = IDTFConverter
IDTFTest.subdir = IDTFTest

IDTFConverter.depends = IFXCoreStatic
test.depends = IDTFConverter
