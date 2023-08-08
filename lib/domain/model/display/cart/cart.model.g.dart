// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Cart _$$_CartFromJson(Map<String, dynamic> json) => _$_Cart(
      quantity: json['quantity'] as int,
      product: ProductInfo.fromJson(json['product'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_CartToJson(_$_Cart instance) => <String, dynamic>{
      'quantity': instance.quantity,
      'product': instance.product,
    };
