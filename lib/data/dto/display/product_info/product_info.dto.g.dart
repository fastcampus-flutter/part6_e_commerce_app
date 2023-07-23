// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_info.dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProductInfoDto _$$_ProductInfoDtoFromJson(Map<String, dynamic> json) =>
    _$_ProductInfoDto(
      productId: json['productId'] as String? ?? '',
      title: json['title'] as String? ?? '',
      subtitle: json['subtitle'] as String? ?? '',
      imageUrl: json['imageUrl'] as String? ?? '',
      price: json['price'] as int? ?? -1,
      originalPrice: json['originalPrice'] as int? ?? -1,
      discountRate: json['discountRate'] as int? ?? -1,
      reviewCount: json['reviewCount'] as int? ?? -1,
    );

Map<String, dynamic> _$$_ProductInfoDtoToJson(_$_ProductInfoDto instance) =>
    <String, dynamic>{
      'productId': instance.productId,
      'title': instance.title,
      'subtitle': instance.subtitle,
      'imageUrl': instance.imageUrl,
      'price': instance.price,
      'originalPrice': instance.originalPrice,
      'discountRate': instance.discountRate,
      'reviewCount': instance.reviewCount,
    };
