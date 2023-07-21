// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'menu.dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MenuDto _$MenuDtoFromJson(Map<String, dynamic> json) {
  return _MenuDto.fromJson(json);
}

/// @nodoc
mixin _$MenuDto {
  int? get tabId => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MenuDtoCopyWith<MenuDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MenuDtoCopyWith<$Res> {
  factory $MenuDtoCopyWith(MenuDto value, $Res Function(MenuDto) then) =
      _$MenuDtoCopyWithImpl<$Res, MenuDto>;
  @useResult
  $Res call({int? tabId, String? title});
}

/// @nodoc
class _$MenuDtoCopyWithImpl<$Res, $Val extends MenuDto>
    implements $MenuDtoCopyWith<$Res> {
  _$MenuDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tabId = freezed,
    Object? title = freezed,
  }) {
    return _then(_value.copyWith(
      tabId: freezed == tabId
          ? _value.tabId
          : tabId // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MenuDtoCopyWith<$Res> implements $MenuDtoCopyWith<$Res> {
  factory _$$_MenuDtoCopyWith(
          _$_MenuDto value, $Res Function(_$_MenuDto) then) =
      __$$_MenuDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? tabId, String? title});
}

/// @nodoc
class __$$_MenuDtoCopyWithImpl<$Res>
    extends _$MenuDtoCopyWithImpl<$Res, _$_MenuDto>
    implements _$$_MenuDtoCopyWith<$Res> {
  __$$_MenuDtoCopyWithImpl(_$_MenuDto _value, $Res Function(_$_MenuDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tabId = freezed,
    Object? title = freezed,
  }) {
    return _then(_$_MenuDto(
      tabId: freezed == tabId
          ? _value.tabId
          : tabId // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MenuDto implements _MenuDto {
  const _$_MenuDto({this.tabId = -1, this.title = ''});

  factory _$_MenuDto.fromJson(Map<String, dynamic> json) =>
      _$$_MenuDtoFromJson(json);

  @override
  @JsonKey()
  final int? tabId;
  @override
  @JsonKey()
  final String? title;

  @override
  String toString() {
    return 'MenuDto(tabId: $tabId, title: $title)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MenuDto &&
            (identical(other.tabId, tabId) || other.tabId == tabId) &&
            (identical(other.title, title) || other.title == title));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, tabId, title);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MenuDtoCopyWith<_$_MenuDto> get copyWith =>
      __$$_MenuDtoCopyWithImpl<_$_MenuDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MenuDtoToJson(
      this,
    );
  }
}

abstract class _MenuDto implements MenuDto {
  const factory _MenuDto({final int? tabId, final String? title}) = _$_MenuDto;

  factory _MenuDto.fromJson(Map<String, dynamic> json) = _$_MenuDto.fromJson;

  @override
  int? get tabId;
  @override
  String? get title;
  @override
  @JsonKey(ignore: true)
  _$$_MenuDtoCopyWith<_$_MenuDto> get copyWith =>
      throw _privateConstructorUsedError;
}
