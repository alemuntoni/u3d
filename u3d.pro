TEMPLATE = subdirs

SUBDIRS = \
	IFXCoreStatic \
	IDTFConverter

SUBDIRS += test

IFXCoreStatic.subdir = RTL
IDTFConverter.subdir = IDTF
test.subdir = test

IDTFConverter.depends = IFXCoreStatic
test.depends = IDTFConverter
