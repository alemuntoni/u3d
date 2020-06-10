TEMPLATE = lib
CONFIG += staticlib
TARGET = IFXCoreStatic
DESTDIR = ../

BASE_SRC_IDTF = ../src/IDTF
BASE_SRC_RTL = ../src/RTL

linux{
	U3D_PLATFORM=Lin32
}
macx {
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
	$${BASE_SRC_RTL}/Dependencies/WildCards

#HEADERS += \
#	Component/Base/IFXVectorHasher.h \
#	Component/Rendering/CIFXDeviceBase.h \
#	Component/Rendering/CIFXDeviceLight.h \
#	Component/Rendering/CIFXDeviceTexture.h \
#	Component/Rendering/CIFXDeviceTexUnit.h \
#	Component/Rendering/CIFXRender.h \
#	Component/Rendering/CIFXRenderContext.h \
#	Component/Rendering/CIFXRenderDevice.h \
#	Component/Rendering/CIFXRenderServices.h \
#	Component/Rendering/DX7/CIFXDeviceLightDX7.h \
#	Component/Rendering/DX7/CIFXDeviceTextureDX7.h \
#	Component/Rendering/DX7/CIFXDeviceTexUnitDX7.h \
#	Component/Rendering/DX7/CIFXDirectX7.h \
#	Component/Rendering/DX7/CIFXRenderDeviceDX7.h \
#	Component/Rendering/DX7/CIFXRenderDX7.h \
#	Component/Rendering/DX7/IFXRenderPCHDX7.h \
#	Component/Rendering/DX8/CIFXDeviceLightDX8.h \
#	Component/Rendering/DX8/CIFXDeviceTextureDX8.h \
#	Component/Rendering/DX8/CIFXDeviceTexUnitDX8.h \
#	Component/Rendering/DX8/CIFXDirectX8.h \
#	Component/Rendering/DX8/CIFXRenderDeviceDX8.h \
#	Component/Rendering/DX8/CIFXRenderDX8.h \
#	Component/Rendering/DX8/IFXRenderPCHDX8.h \
#	Component/Rendering/IFXAAFilter.h \
#	Component/Rendering/IFXRenderPCH.h \
#	Component/Rendering/Null/CIFXDeviceLightNULL.h \
#	Component/Rendering/Null/CIFXDeviceTextureNULL.h \
#	Component/Rendering/Null/CIFXDeviceTexUnitNULL.h \
#	Component/Rendering/Null/CIFXRenderDeviceNULL.h \
#	Component/Rendering/Null/CIFXRenderNULL.h \
#	Component/Rendering/Null/IFXRenderPCHNULL.h \
#	Component/Rendering/OpenGL/CIFXDeviceLightOGL.h \
#	Component/Rendering/OpenGL/CIFXDeviceTextureOGL.h \
#	Component/Rendering/OpenGL/CIFXDeviceTexUnitOGL.h \
#	Component/Rendering/OpenGL/CIFXOpenGL.h \
#	Component/Rendering/OpenGL/CIFXRenderDeviceOGL.h \
#	Component/Rendering/OpenGL/CIFXRenderOGL.h \
#	Component/Rendering/OpenGL/IFXRenderPCHOGL.h \
#	Dependencies/WildCards/wcmatch.h

SOURCES += \
	$${BASE_SRC_RTL}/IFXCoreStatic/IFXCoreStatic.cpp \
	$${BASE_SRC_RTL}/Component/Common/IFXDids.cpp \
	$${BASE_SRC_RTL}/Component/Base/IFXCoincidentVertexMap.cpp \
	$${BASE_SRC_RTL}/Component/Base/IFXCornerIter.cpp \
	$${BASE_SRC_RTL}/Component/Base/IFXEuler.cpp \
	$${BASE_SRC_RTL}/Component/Base/IFXFatCornerIter.cpp \
	$${BASE_SRC_RTL}/Component/Base/IFXTransform.cpp \
	$${BASE_SRC_RTL}/Component/Base/IFXVectorHasher.cpp \
	$${BASE_SRC_RTL}/Component/Base/IFXVertexMap.cpp \
	$${BASE_SRC_RTL}/Component/Base/IFXVertexMapGroup.cpp \
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
	$${BASE_SRC_RTL}/Kernel/Common/IFXDebug.cpp \
	$${BASE_SRC_RTL}/Platform/$${U3D_PLATFORM}/Common/IFXOSUtilities.cpp \
	$${BASE_SRC_RTL}/Platform/$${U3D_PLATFORM}/Common/IFXOSLoader.cpp \
	$${BASE_SRC_RTL}/Platform/$${U3D_PLATFORM}/Common/IFXOSRenderWindow.cpp
