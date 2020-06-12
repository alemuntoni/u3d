TEMPLATE = lib
CONFIG += dll
TARGET = IFXExporting
DESTDIR = ../

BASE_SRC_IDTF = $${PWD}/../src/IDTF
BASE_SRC_RTL = $${PWD}/../src/RTL

linux{
	U3D_PLATFORM=Lin32
}
macx {
    DEFINES+=MAC32
	U3D_PLATFORM=Mac32
}

win32 {
	U3D_PLATFORM=Win32
}

INCLUDEPATH += \
	$${BASE_SRC_RTL}/Component/Include/ \
	$${BASE_SRC_RTL}/Kernel/Include/ \
	$${BASE_SRC_RTL}/Platform/Include \
	$${BASE_SRC_RTL}/Component/Base \
	$${BASE_SRC_RTL}/Component/Rendering \
	$${BASE_SRC_RTL}/Dependencies/WildCards \
	$${BASE_SRC_RTL}/Component/Exporting

HEADERS += \
	$${BASE_SRC_RTL}/Dependencies/WildCards/wcmatch.h

SOURCES += \
	$${BASE_SRC_RTL}/Platform/$${U3D_PLATFORM}/IFXExporting/IFXExportingDllMain.cpp \
	$${BASE_SRC_RTL}/Component/Exporting/CIFXAnimationModifierEncoder.cpp \
	$${BASE_SRC_RTL}/Component/Exporting/CIFXAuthorCLODEncoderX.cpp \
	$${BASE_SRC_RTL}/Component/Exporting/CIFXAuthorCLODEncoderX_P.cpp \
	$${BASE_SRC_RTL}/Component/Exporting/CIFXAuthorCLODEncoderX_S.cpp \
	$${BASE_SRC_RTL}/Component/Exporting/CIFXAuthorGeomCompiler.cpp \
	$${BASE_SRC_RTL}/Component/Exporting/CIFXBlockPriorityQueueX.cpp \
	$${BASE_SRC_RTL}/Component/Exporting/CIFXBlockWriterX.cpp \
	$${BASE_SRC_RTL}/Component/Exporting/CIFXBoneWeightsModifierEncoder.cpp \
	$${BASE_SRC_RTL}/Component/Exporting/CIFXCLODModifierEncoder.cpp \
	$${BASE_SRC_RTL}/Component/Exporting/CIFXDummyModifierEncoder.cpp \
	$${BASE_SRC_RTL}/Component/Exporting/CIFXFileReferenceEncoder.cpp \
	$${BASE_SRC_RTL}/Component/Exporting/CIFXGlyphModifierEncoder.cpp \
	$${BASE_SRC_RTL}/Component/Exporting/CIFXGroupNodeEncoder.cpp \
	$${BASE_SRC_RTL}/Component/Exporting/CIFXLightNodeEncoder.cpp \
	$${BASE_SRC_RTL}/Component/Exporting/CIFXLightResourceEncoder.cpp \
	$${BASE_SRC_RTL}/Component/Exporting/CIFXLineSetEncoder.cpp \
	$${BASE_SRC_RTL}/Component/Exporting/CIFXMaterialResourceEncoder.cpp \
	$${BASE_SRC_RTL}/Component/Exporting/CIFXModelNodeEncoder.cpp \
	$${BASE_SRC_RTL}/Component/Exporting/CIFXMotionResourceEncoder.cpp \
	$${BASE_SRC_RTL}/Component/Exporting/CIFXNodeBaseEncoder.cpp \
	$${BASE_SRC_RTL}/Component/Exporting/CIFXPointSetEncoder.cpp \
	$${BASE_SRC_RTL}/Component/Exporting/CIFXShaderLitTextureEncoder.cpp \
	$${BASE_SRC_RTL}/Component/Exporting/CIFXShadingModifierEncoder.cpp \
	$${BASE_SRC_RTL}/Component/Exporting/CIFXStdioWriteBufferX.cpp \
	$${BASE_SRC_RTL}/Component/Exporting/CIFXSubdivisionModifierEncoder.cpp \
	$${BASE_SRC_RTL}/Component/Exporting/CIFXViewNodeEncoder.cpp \
	$${BASE_SRC_RTL}/Component/Exporting/CIFXViewResourceEncoder.cpp \
	$${BASE_SRC_RTL}/Component/Exporting/CIFXWriteManager.cpp \
	$${BASE_SRC_RTL}/Component/Exporting/IFXExporting.cpp \
	$${BASE_SRC_RTL}/Component/Exporting/IFXExportingGuids.cpp \
	$${BASE_SRC_RTL}/IFXCorePluginStatic/IFXCorePluginStatic.cpp \
	$${BASE_SRC_RTL}/Platform/$${U3D_PLATFORM}/Common/IFXOSUtilities.cpp \
	$${BASE_SRC_RTL}/Platform/$${U3D_PLATFORM}/Common/IFXOSLoader.cpp \
	$${BASE_SRC_RTL}/Component/Base/IFXVertexMap.cpp \
	$${BASE_SRC_RTL}/Kernel/DataTypes/IFXCoreArray.cpp \
	$${BASE_SRC_RTL}/Kernel/DataTypes/IFXCoreList.cpp \
	$${BASE_SRC_RTL}/Kernel/DataTypes/IFXFastAllocator.cpp \
	$${BASE_SRC_RTL}/Kernel/DataTypes/IFXListNode.cpp \
	$${BASE_SRC_RTL}/Kernel/DataTypes/IFXMatrix4x4.cpp \
	$${BASE_SRC_RTL}/Kernel/DataTypes/IFXQuaternion.cpp \
	$${BASE_SRC_RTL}/Kernel/DataTypes/IFXString.cpp \
	$${BASE_SRC_RTL}/Kernel/DataTypes/IFXUnitAllocator.cpp \
	$${BASE_SRC_RTL}/Kernel/DataTypes/IFXVector3.cpp \
	$${BASE_SRC_RTL}/Kernel/DataTypes/IFXVector4.cpp \
	$${BASE_SRC_RTL}/Dependencies/WildCards/wcmatch.cpp \
	$${BASE_SRC_RTL}/Kernel/Common/IFXDebug.cpp

linux  {
	#QMAKE_LFLAGS += -Wl --version-script=$${BASE_SRC_RTL}/Platform/Lin32/IFXExporting/IFXExporting.list
}
macx {
    QMAKE_LFLAGS += -exported_symbols_list $${BASE_SRC_RTL}/Platform/Mac32/IFXExporting/IFXExporting.def   -undefined dynamic_lookup
	QMAKE_LFLAGS_PLUGIN -= -dynamiclib
	QMAKE_LFLAGS_PLUGIN += -bundle
	QMAKE_EXTENSION_SHLIB = so
}

#IF(WIN32)
#  SET( EXPORT_DIR ${CMAKE_CURRENT_SOURCE_DIR}/RTL/Platform/Win32/IFXExporting )
#  ADD_LIBRARY( IFXExporting  SHARED ${IFXExporting_SRCS} ${IFXExporting_HDRS} ${EXPORT_DIR}/IFXExporting.rc ${EXPORT_DIR}/IFXResource.h ${EXPORT_DIR}/IFXExporting.def )
#  TARGET_LINK_LIBRARIES( IFXExporting IFXCore )
#ENDIF(WIN32)
#IF(APPLE)
#  ADD_LIBRARY( IFXExporting  MODULE ${IFXExporting_SRCS} ${IFXExporting_HDRS} )
#  set_target_properties( IFXExporting  PROPERTIES
#	LINK_FLAGS "${MY_LINK_FLAGS} -exported_symbols_list ${CMAKE_CURRENT_SOURCE_DIR}/RTL/Platform/Mac32/IFXExporting/IFXExporting.def   -undefined dynamic_lookup" )
#ENDIF(APPLE)
#IF(UNIX AND NOT APPLE)
#  ADD_LIBRARY( IFXExporting  MODULE ${IFXExporting_SRCS} ${IFXExporting_HDRS} )
#  set_target_properties( IFXExporting  PROPERTIES
#	LINK_FLAGS "-Wl,--version-script=${CMAKE_CURRENT_SOURCE_DIR}/RTL/Platform/Lin32/IFXExporting/IFXExporting.list" )
#ENDIF(UNIX AND NOT APPLE)
