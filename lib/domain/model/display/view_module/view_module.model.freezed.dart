// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'view_module.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ViewModule _$ViewModuleFromJson(Map<String, dynamic> json) {
  return _ViewModule.fromJson(json);
}

/// @nodoc
mixin _$ViewModule {
  String get type => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get subtitle => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ViewModuleCopyWith<ViewModule> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ViewModuleCopyWith<$Res> {
  factory $ViewModuleCopyWith(
          ViewModule value, $Res Function(ViewModule) then) =
      _$ViewModuleCopyWithImpl<$Res, ViewModule>;
  @useResult
  $Res call({String type, String title, String subtitle, String imageUrl});
}

/// @nodoc
class _$ViewModuleCopyWithImpl<$Res, $Val extends ViewModule>
    implements $ViewModuleCopyWith<$Res> {
  _$ViewModuleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? title = null,
    Object? subtitle = null,
    Object? imageUrl = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ViewModuleCopyWith<$Res>
    implements $ViewModuleCopyWith<$Res> {
  factory _$$_ViewModuleCopyWith(
          _$_ViewModule value, $Res Function(_$_ViewModule) then) =
      __$$_ViewModuleCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String type, String title, String subtitle, String imageUrl});
}

/// @nodoc
class __$$_ViewModuleCopyWithImpl<$Res>
    extends _$ViewModuleCopyWithImpl<$Res, _$_ViewModule>
    implements _$$_ViewModuleCopyWith<$Res> {
  __$$_ViewModuleCopyWithImpl(
      _$_ViewModule _value, $Res Function(_$_ViewModule) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? title = null,
    Object? subtitle = null,
    Object? imageUrl = null,
  }) {
    return _then(_$_ViewModule(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ViewModule implements _ViewModule {
  const _$_ViewModule(
      {required this.type,
      required this.title,
      required this.subtitle,
      required this.imageUrl});

  factory _$_ViewModule.fromJson(Map<String, dynamic> json) =>
      _$$_ViewModuleFromJson(json);

  @override
  final String type;
  @override
  final String title;
  @override
  final String subtitle;
  @override
  final String imageUrl;

  @override
  String toString() {
    return 'ViewModule(type: $type, title: $title, subtitle: $subtitle, imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ViewModule &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.subtitle, subtitle) ||
                other.subtitle == subtitle) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, type, title, subtitle, imageUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ViewModuleCopyWith<_$_ViewModule> get copyWith =>
      __$$_ViewModuleCopyWithImpl<_$_ViewModule>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ViewModuleToJson(
      this,
    );
  }
}

abstract class _ViewModule implements ViewModule {
  const factory _ViewModule(
      {required final String type,
      required final String title,
      required final String subtitle,
      required final String imageUrl}) = _$_ViewModule;

  factory _ViewModule.fromJson(Map<String, dynamic> json) =
      _$_ViewModule.fromJson;

  @override
  String get type;
  @override
  String get title;
  @override
  String get subtitle;
  @override
  String get imageUrl;
  @override
  @JsonKey(ignore: true)
  _$$_ViewModuleCopyWith<_$_ViewModule> get copyWith =>
      throw _privateConstructorUsedError;
}
