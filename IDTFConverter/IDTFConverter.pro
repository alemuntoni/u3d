TEMPLATE = lib
CONFIG += staticlib
TARGET = IDTFConverter
DESTDIR = ../

BASE_SRC_IDTF = ../src/IDTF
BASE_SRC_RTL = ../src/RTL

INCLUDEPATH += \
	$${BASE_SRC_RTL}/Component/Include \
	$${BASE_SRC_RTL}/Kernel/Include \
	$${BASE_SRC_RTL}/Platform/Include \
	$${BASE_SRC_IDTF} \
	$${BASE_SRC_IDTF}/Include/ \
	$${BASE_SRC_IDTF}/Common/


#HEADERS += \
#	BlockParser.h \
#	Converter.h \
#	DefaultSettings.h \
#	File.h \
#	FileParser.h \
#	FileReferenceConverter.h \
#	FileReferenceParser.h \
#	FileScanner.h \
#	IConverter.h \
#	LineSetConverter.h \
#	LineSetResourceParser.h \
#	MaterialParser.h \
#	MeshConverter.h \
#	MeshResourceParser.h \
#	MetaDataConverter.h \
#	MetaDataParser.h \
#	ModelConverter.h \
#	ModelResourceParser.h \
#	ModifierConverter.h \
#	ModifierParser.h \
#	NodeConverter.h \
#	NodeParser.h \
#	PointSetConverter.h \
#	PointSetResourceParser.h \
#	ResourceConverter.h \
#	ResourceListParser.h \
#	SceneConverter.h \
#	ShaderParser.h \
#	TextureConverter.h \
#	TextureParser.h \
#	UrlListParser.h \
#	Include/ConverterHelpers.h \
#	Include/ConverterOptions.h \
#	Include/ConverterResult.h \
#	Include/DebugInfo.h \
#	Include/SceneUtilities.h \
#	Include/TGAImage.h \
#	Include/U3DHeaders.h \
#	Common/AnimationModifier.h \
#	Common/BoneWeightModifier.h \
#	Common/CLODModifier.h \
#	Common/Color.h \
#	Common/FileReference.h \
#	Common/GlyphCommandList.h \
#	Common/GlyphCommands.h \
#	Common/GlyphModifier.h \
#	Common/INode.h \
#	Common/Int2.h \
#	Common/Int3.h \
#	Common/IResource.h \
#	Common/LightNode.h \
#	Common/LightResource.h \
#	Common/LightResourceList.h \
#	Common/LineSetResource.h \
#	Common/MaterialResource.h \
#	Common/MaterialResourceList.h \
#	Common/MeshResource.h \
#	Common/MetaDataList.h \
#	Common/ModelNode.h \
#	Common/ModelResource.h \
#	Common/ModelResourceList.h \
#	Common/ModelSkeleton.h \
#	Common/Modifier.h \
#	Common/ModifierList.h \
#	Common/MotionResource.h \
#	Common/MotionResourceList.h \
#	Common/Node.h \
#	Common/NodeList.h \
#	Common/ParentData.h \
#	Common/ParentList.h \
#	Common/Point.h \
#	Common/PointSetResource.h \
#	Common/Quat.h \
#	Common/Resource.h \
#	Common/ResourceList.h \
#	Common/SceneData.h \
#	Common/SceneResources.h \
#	Common/ShaderResource.h \
#	Common/ShaderResourceList.h \
#	Common/ShadingDescription.h \
#	Common/ShadingDescriptionList.h \
#	Common/ShadingModifier.h \
#	Common/SubdivisionModifier.h \
#	Common/TextureResource.h \
#	Common/TextureResourceList.h \
#	Common/Tokens.h \
#	Common/UrlList.h \
#	Common/ViewNodeData.h \
#	Common/ViewNode.h \
#	Common/ViewResource.h \
#	Common/ViewResourceList.h

SOURCES += \
	$${BASE_SRC_IDTF}/Converter.cpp \
	$${BASE_SRC_IDTF}/FileParser.cpp \
	$${BASE_SRC_IDTF}/SceneConverter.cpp \
	$${BASE_SRC_IDTF}/PointSetResourceParser.cpp \
	$${BASE_SRC_IDTF}/UrlListParser.cpp \
	$${BASE_SRC_IDTF}/NodeParser.cpp \
	$${BASE_SRC_IDTF}/ModifierParser.cpp \
	$${BASE_SRC_IDTF}/PointSetConverter.cpp \
	$${BASE_SRC_IDTF}/MaterialParser.cpp \
	$${BASE_SRC_IDTF}/MetaDataConverter.cpp \
	$${BASE_SRC_IDTF}/MeshResourceParser.cpp \
	$${BASE_SRC_IDTF}/ResourceConverter.cpp \
	$${BASE_SRC_IDTF}/TextureConverter.cpp \
	$${BASE_SRC_IDTF}/ResourceListParser.cpp \
	$${BASE_SRC_IDTF}/File.cpp \
	$${BASE_SRC_IDTF}/LineSetConverter.cpp \
	#$${BASE_SRC_IDTF}/ConverterDriver.cpp \
	$${BASE_SRC_IDTF}/ModelConverter.cpp \
	$${BASE_SRC_IDTF}/TextureParser.cpp \
	$${BASE_SRC_IDTF}/NodeConverter.cpp \
	$${BASE_SRC_IDTF}/MeshConverter.cpp \
	$${BASE_SRC_IDTF}/BlockParser.cpp \
	$${BASE_SRC_IDTF}/ModelResourceParser.cpp \
	$${BASE_SRC_IDTF}/FileReferenceConverter.cpp \
	$${BASE_SRC_IDTF}/ShaderParser.cpp \
	$${BASE_SRC_IDTF}/FileScanner.cpp \
	$${BASE_SRC_IDTF}/FileReferenceParser.cpp \
	$${BASE_SRC_IDTF}/ModifierConverter.cpp \
	$${BASE_SRC_IDTF}/MetaDataParser.cpp \
	$${BASE_SRC_IDTF}/LineSetResourceParser.cpp \
	$${BASE_SRC_IDTF}/Helpers/MiscUtilities.cpp \
	$${BASE_SRC_IDTF}/Helpers/TGAImage.cpp \
	$${BASE_SRC_IDTF}/Helpers/ModifierUtilities.cpp \
	$${BASE_SRC_IDTF}/Helpers/ConverterHelpers.cpp \
	$${BASE_SRC_IDTF}/Helpers/SceneUtilities.cpp \
	$${BASE_SRC_IDTF}/Helpers/DebugInfo.cpp \
	$${BASE_SRC_IDTF}/Helpers/Guids.cpp \
	$${BASE_SRC_IDTF}/Common/GlyphModifier.cpp \
	$${BASE_SRC_IDTF}/Common/ModelResource.cpp \
	$${BASE_SRC_IDTF}/Common/ModifierList.cpp \
	$${BASE_SRC_IDTF}/Common/NodeList.cpp \
	$${BASE_SRC_IDTF}/Common/FileReference.cpp \
	$${BASE_SRC_IDTF}/Common/ResourceList.cpp \
	$${BASE_SRC_IDTF}/Common/SceneResources.cpp \
	$${BASE_SRC_IDTF}/Common/ModelResourceList.cpp \
	$${BASE_SRC_IDTF}/Common/MetaDataList.cpp \
	$${BASE_SRC_IDTF}/Common/ParentList.cpp \
	$${BASE_SRC_IDTF}/Common/GlyphCommandList.cpp
