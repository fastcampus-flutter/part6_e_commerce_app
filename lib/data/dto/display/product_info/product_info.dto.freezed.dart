// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_info.dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProductInfoDto _$ProductInfoDtoFromJson(Map<String, dynamic> json) {
  return _ProductInfoDto.fromJson(json);
}

/// @nodoc
mixin _$ProductInfoDto {
  String? get productId => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get subtitle => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;
  int? get price => throw _privateConstructorUsedError;
  int? get originalPrice => throw _privateConstructorUsedError;
  int? get discountRate => throw _privateConstructorUsedError;
  int? get reviewCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductInfoDtoCopyWith<ProductInfoDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductInfoDtoCopyWith<$Res> {
  factory $ProductInfoDtoCopyWith(
          ProductInfoDto value, $Res Function(ProductInfoDto) then) =
      _$ProductInfoDtoCopyWithImpl<$Res, ProductInfoDto>;
  @useResult
  $Res call(
      {String? productId,
      String? title,
      String? subtitle,
      String? imageUrl,
      int? price,
      int? originalPrice,
      int? discountRate,
      int? reviewCount});
}

/// @nodoc
class _$ProductInfoDtoCopyWithImpl<$Res, $Val extends ProductInfoDto>
    implements $ProductInfoDtoCopyWith<$Res> {
  _$ProductInfoDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = freezed,
    Object? title = freezed,
    Object? subtitle = freezed,
    Object? imageUrl = freezed,
    Object? price = freezed,
    Object? originalPrice = freezed,
    Object? discountRate = freezed,
    Object? reviewCount = freezed,
  }) {
    return _then(_value.copyWith(
      productId: freezed == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      subtitle: freezed == subtitle
          ? _value.subtitle
          : subtitle // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
      originalPrice: freezed == originalPrice
          ? _value.originalPrice
          : originalPrice // ignore: cast_nullable_to_non_nullable
              as int?,
      discountRate: freezed == discountRate
          ? _value.discountRate
          : discountRate // ignore: cast_nullable_to_non_nullable
              as int?,
      reviewCount: freezed == reviewCount
          ? _value.reviewCount
          : reviewCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProductInfoDtoCopyWith<$Res>
    implements $ProductInfoDtoCopyWith<$Res> {
  factory _$$_ProductInfoDtoCopyWith(
          _$_ProductInfoDto value, $Res Function(_$_ProductInfoDto) then) =
      __$$_ProductInfoDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? productId,
      String? title,
      String? subtitle,
      String? imageUrl,
      int? price,
      int? originalPrice,
      int? discountRate,
      int? reviewCount});
}

/// @nodoc
class __$$_ProductInfoDtoCopyWithImpl<$Res>
    extends _$ProductInfoDtoCopyWithImpl<$Res, _$_ProductInfoDto>
    implements _$$_ProductInfoDtoCopyWith<$Res> {
  __$$_ProductInfoDtoCopyWithImpl(
      _$_ProductInfoDto _value, $Res Function(_$_ProductInfoDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = freezed,
    Object? title = freezed,
    Object? subtitle = freezed,
    Object? imageUrl = freezed,
    Object? price = freezed,
    Object? originalPrice = freezed,
    Object? discountRate = freezed,
    Object? reviewCount = freezed,
  }) {
    return _then(_$_ProductInfoDto(
      productId: freezed == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      subtitle: freezed == subtitle
          ? _value.subtitle
          : subtitle // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
      originalPrice: freezed == originalPrice
          ? _value.originalPrice
          : originalPrice // ignore: cast_nullable_to_non_nullable
              as int?,
      discountRate: freezed == discountRate
          ? _value.discountRate
          : discountRate // ignore: cast_nullable_to_non_nullable
              as int?,
      reviewCount: freezed == reviewCount
          ? _value.reviewCount
          : reviewCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProductInfoDto implements _ProductInfoDto {
  const _$_ProductInfoDto(
      {this.productId = '',
      this.title = '',
      this.subtitle = '',
      this.imageUrl = '',
      this.price = -1,
      this.originalPrice = -1,
      this.discountRate = -1,
      this.reviewCount = -1});

  factory _$_ProductInfoDto.fromJson(Map<String, dynamic> json) =>
      _$$_ProductInfoDtoFromJson(json);

  @override
  @JsonKey()
  final String? productId;
  @override
  @JsonKey()
  final String? title;
  @override
  @JsonKey()
  final String? subtitle;
  @override
  @JsonKey()
  final String? imageUrl;
  @override
  @JsonKey()
  final int? price;
  @override
  @JsonKey()
  final int? originalPrice;
  @override
  @JsonKey()
  final int? discountRate;
  @override
  @JsonKey()
  final int? reviewCount;

  @override
  String toString() {
    return 'ProductInfoDto(productId: $productId, title: $title, subtitle: $subtitle, imageUrl: $imageUrl, price: $price, originalPrice: $originalPrice, discountRate: $discountRate, reviewCount: $reviewCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductInfoDto &&
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
            (identical(other.discountRate, discountRate) ||
                other.discountRate == discountRate) &&
            (identical(other.reviewCount, reviewCount) ||
                other.reviewCount == reviewCount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, productId, title, subtitle,
      imageUrl, price, originalPrice, discountRate, reviewCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProductInfoDtoCopyWith<_$_ProductInfoDto> get copyWith =>
      __$$_ProductInfoDtoCopyWithImpl<_$_ProductInfoDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductInfoDtoToJson(
      this,
    );
  }
}

abstract class _ProductInfoDto implements ProductInfoDto {
  const factory _ProductInfoDto(
      {final String? productId,
      final String? title,
      final String? subtitle,
      final String? imageUrl,
      final int? price,
      final int? originalPrice,
      final int? discountRate,
      final int? reviewCount}) = _$_ProductInfoDto;

  factory _ProductInfoDto.fromJson(Map<String, dynamic> json) =
      _$_ProductInfoDto.fromJson;

  @override
  String? get productId;
  @override
  String? get title;
  @override
  String? get subtitle;
  @override
  String? get imageUrl;
  @override
  int? get price;
  @override
  int? get originalPrice;
  @override
  int? get discountRate;
  @override
  int? get reviewCount;
  @override
  @JsonKey(ignore: true)
  _$$_ProductInfoDtoCopyWith<_$_ProductInfoDto> get copyWith =>
      throw _privateConstructorUsedError;
}
