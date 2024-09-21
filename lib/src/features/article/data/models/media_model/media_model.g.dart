// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'media_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MediaModel _$MediaModelFromJson(Map<String, dynamic> json) => MediaModel(
      type: json['type'] as String?,
      subtype: json['subtype'] as String?,
      caption: json['caption'] as String?,
      copyright: json['copyright'] as String?,
      approvedForSyndication:
          (json['approved_for_syndication'] as num?)?.toInt(),
      mediaMetadata: (json['media-metadata'] as List<dynamic>?)
          ?.map(MediaMetaDataModel.fromJson)
          .toList(),
    );

Map<String, dynamic> _$MediaModelToJson(MediaModel instance) =>
    <String, dynamic>{
      'type': instance.type,
      'subtype': instance.subtype,
      'caption': instance.caption,
      'copyright': instance.copyright,
      'approved_for_syndication': instance.approvedForSyndication,
      'media-metadata': instance.mediaMetadata,
    };

MediaMetaDataModel _$MediaMetaDataModelFromJson(Map<String, dynamic> json) =>
    MediaMetaDataModel(
      url: json['url'] as String?,
      format: json['format'] as String?,
      height: (json['height'] as num?)?.toInt(),
      width: (json['width'] as num?)?.toInt(),
    );

Map<String, dynamic> _$MediaMetaDataModelToJson(MediaMetaDataModel instance) =>
    <String, dynamic>{
      'url': instance.url,
      'format': instance.format,
      'height': instance.height,
      'width': instance.width,
    };
