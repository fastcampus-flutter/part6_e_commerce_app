// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_info.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProductInfo _$ProductInfoFromJson(Map<String, dynamic> json) {
  return _ProductInfo.fromJson(json);
}

/// @nodoc
mixin _$ProductInfo {
  String get productId => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get subtitle => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;
  int get price => throw _privateConstructorUsedError;
  int get originalPrice => throw _privateConstructorUsedError;
  int get discrountRate => throw _privateConstructorUsedError;
  int get reviewCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductInfoCopyWith<ProductInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductInfoCopyWith<$Res> {
  factory $ProductInfoCopyWith(
          ProductInfo value, $Res Function(ProductInfo) then) =
      _$ProductInfoCopyWithImpl<$Res, ProductInfo>;
  @useResult
  $Res call(
      {String productId,
      String title,
      String subtitle,
      String imageUrl,
      int price,
      int originalPrice,
      int discrountRate,
      int reviewCount});
}

/// @nodoc
class _$ProductInfoCopyWithImpl<$Res, $Val extends ProductInfo>
    implements $ProductInfoCopyWith<$Res> {
  _$ProductInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = null,
    Object? title = null,
    Object? subtitle = null,
    Object? imageUrl = null,
    Object? price = null,
    Object? originalPrice = null,
    Object? discrountRate = null,
    Object? reviewCount = null,
  }) {
    return _then(_value.copyWith(
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      subtitle: null == subtitle
          ? _value.subtitle
          : subtitle // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      originalPrice: null == originalPrice
          ? _value.originalPrice
          : originalPrice // ignore: cast_nullable_to_non_nullable
              as int,
      discrountRate: null == discrountRate
          ? _value.discrountRate
          : discrountRate // ignore: cast_nullable_to_non_nullable
              as int,
      reviewCount: null == reviewCount
          ? _value.reviewCount
          : reviewCount // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProductInfoCopyWith<$Res>
    implements $ProductInfoCopyWith<$Res> {
  factory _$$_ProductInfoCopyWith(
          _$_ProductInfo value, $Res Function(_$_ProductInfo) then) =
      __$$_ProductInfoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String productId,
      String title,
      String subtitle,
      String imageUrl,
      int price,
      int originalPrice,
      int discrountRate,
      int reviewCount});
}

/// @nodoc
class __$$_ProductInfoCopyWithImpl<$Res>
    extends _$ProductInfoCopyWithImpl<$Res, _$_ProductInfo>
    implements _$$_ProductInfoCopyWith<$Res> {
  __$$_ProductInfoCopyWithImpl(
      _$_ProductInfo _value, $Res Function(_$_ProductInfo) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = null,
    Object? title = null,
    Object? subtitle = null,
    Object? imageUrl = null,
    Object? price = null,
    Object? originalPrice = null,
    Object? discrountRate = null,
    Object? reviewCount = null,
  }) {
    return _then(_$_ProductInfo(
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      subtitle: null == subtitle
          ? _value.subtitle
          : subtitle // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      originalPrice: null == originalPrice
          ? _value.originalPrice
          : originalPrice // ignore: cast_nullable_to_non_nullable
              as int,
      discrountRate: null == discrountRate
          ? _value.discrountRate
          : discrountRate // ignore: cast_nullable_to_non_nullable
              as int,
      reviewCount: null == reviewCount
          ? _value.reviewCount
          : reviewCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProductInfo implements _ProductInfo {
  const _$_ProductInfo(
      {required this.productId,
      required this.title,
      required this.subtitle,
      required this.imageUrl,
      required this.price,
      required this.originalPrice,
      required this.discrountRate,
      required this.reviewCount});

  factory _$_ProductInfo.fromJson(Map<String, dynamic> json) =>
      _$$_ProductInfoFromJson(json);

  @override
  final String productId;
  @override
  final String title;
  @override
  final String subtitle;
  @override
  final String imageUrl;
  @override
  final int price;
  @override
  final int originalPrice;
  @override
  final int discrountRate;
  @override
  final int reviewCount;

  @override
  String toString() {
    return 'ProductInfo(productId: $productId, title: $title, subtitle: $subtitle, imageUrl: $imageUrl, price: $price, originalPrice: $originalPrice, discrountRate: $discrountRate, reviewCount: $reviewCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductInfo &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.subtitle, subtitle) ||
                other.subtitle == subtitle) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.originalPrice, originalPrice) ||
                other.originalPrice == originalPrice) &&
            (identical(other.discrountRate, discrountRate) ||
                other.discrountRate == discrountRate) &&
            (identical(other.reviewCount, reviewCount) ||
                other.reviewCount == reviewCount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, productId, title, subtitle,
      imageUrl, price, originalPrice, discrountRate, reviewCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProductInfoCopyWith<_$_ProductInfo> get copyWith =>
      __$$_ProductInfoCopyWithImpl<_$_ProductInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductInfoToJson(
      this,
    );
  }
}

abstract class _ProductInfo implements ProductInfo {
  const factory _ProductInfo(
      {required final String productId,
      required final String title,
      required final String subtitle,
      required final String imageUrl,
      required final int price,
      required final int originalPrice,
      required final int discrountRate,
      required final int reviewCount}) = _$_ProductInfo;

  factory _ProductInfo.fromJson(Map<String, dynamic> json) =
      _$_ProductInfo.fromJson;

  @override
  String get productId;
  @override
  String get title;
  @override
  String get subtitle;
  @override
  String get imageUrl;
  @override
  int get price;
  @override
  int get originalPrice;
  @override
  int get discrountRate;
  @override
  int get reviewCount;
  @override
  @JsonKey(ignore: true)
  _$$_ProductInfoCopyWith<_$_ProductInfo> get copyWith =>
      throw _privateConstructorUsedError;
}
