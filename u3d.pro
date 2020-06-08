TEMPLATE = subdirs

SUBDIRS = \
	IFXCoreStatic \
	IDTFConverter

IFXCoreStatic.subdir = RTL/IFXCoreStatic.pro
IDTFConverter.subdir = IDTF/IDTFConverter.pro

IDTFConverter.depends = IFXCoreStatic
