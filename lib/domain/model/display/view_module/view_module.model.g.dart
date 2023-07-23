// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'view_module.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ViewModule _$$_ViewModuleFromJson(Map<String, dynamic> json) =>
    _$_ViewModule(
      type: json['type'] as String,
      title: json['title'] as String,
      subtitle: json['subtitle'] as String,
      imageUrl: json['imageUrl'] as String,
      products: (json['products'] as List<dynamic>)
          .map((e) => ProductInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ViewModuleToJson(_$_ViewModule instance) =>
    <String, dynamic>{
      'type': instance.type,
      'title': instance.title,
      'subtitle': instance.subtitle,
      'imageUrl': instance.imageUrl,
      'products': instance.products,
    };
