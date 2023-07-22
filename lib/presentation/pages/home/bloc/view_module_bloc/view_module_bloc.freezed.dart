// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'view_module_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ViewModuleState {
  Status get status => throw _privateConstructorUsedError;
  ErrorResponse get error => throw _privateConstructorUsedError;
  int get tabId => throw _privateConstructorUsedError;
  List<Widget> get viewModules => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ViewModuleStateCopyWith<ViewModuleState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ViewModuleStateCopyWith<$Res> {
  factory $ViewModuleStateCopyWith(
          ViewModuleState value, $Res Function(ViewModuleState) then) =
      _$ViewModuleStateCopyWithImpl<$Res, ViewModuleState>;
  @useResult
  $Res call(
      {Status status,
      ErrorResponse error,
      int tabId,
      List<Widget> viewModules});
}

/// @nodoc
class _$ViewModuleStateCopyWithImpl<$Res, $Val extends ViewModuleState>
    implements $ViewModuleStateCopyWith<$Res> {
  _$ViewModuleStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? error = null,
    Object? tabId = null,
    Object? viewModules = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ErrorResponse,
      tabId: null == tabId
          ? _value.tabId
          : tabId // ignore: cast_nullable_to_non_nullable
              as int,
      viewModules: null == viewModules
          ? _value.viewModules
          : viewModules // ignore: cast_nullable_to_non_nullable
              as List<Widget>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ViewModuleStateCopyWith<$Res>
    implements $ViewModuleStateCopyWith<$Res> {
  factory _$$_ViewModuleStateCopyWith(
          _$_ViewModuleState value, $Res Function(_$_ViewModuleState) then) =
      __$$_ViewModuleStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Status status,
      ErrorResponse error,
      int tabId,
      List<Widget> viewModules});
}

/// @nodoc
class __$$_ViewModuleStateCopyWithImpl<$Res>
    extends _$ViewModuleStateCopyWithImpl<$Res, _$_ViewModuleState>
    implements _$$_ViewModuleStateCopyWith<$Res> {
  __$$_ViewModuleStateCopyWithImpl(
      _$_ViewModuleState _value, $Res Function(_$_ViewModuleState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? error = null,
    Object? tabId = null,
    Object? viewModules = null,
  }) {
    return _then(_$_ViewModuleState(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ErrorResponse,
      tabId: null == tabId
          ? _value.tabId
          : tabId // ignore: cast_nullable_to_non_nullable
              as int,
      viewModules: null == viewModules
          ? _value._viewModules
          : viewModules // ignore: cast_nullable_to_non_nullable
              as List<Widget>,
    ));
  }
}

/// @nodoc

class _$_ViewModuleState implements _ViewModuleState {
  _$_ViewModuleState(
      {this.status = Status.initial,
      this.error = const ErrorResponse(),
      this.tabId = 0,
      final List<Widget> viewModules = const <Widget>[]})
      : _viewModules = viewModules;

  @override
  @JsonKey()
  final Status status;
  @override
  @JsonKey()
  final ErrorResponse error;
  @override
  @JsonKey()
  final int tabId;
  final List<Widget> _viewModules;
  @override
  @JsonKey()
  List<Widget> get viewModules {
    if (_viewModules is EqualUnmodifiableListView) return _viewModules;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_viewModules);
  }

  @override
  String toString() {
    return 'ViewModuleState(status: $status, error: $error, tabId: $tabId, viewModules: $viewModules)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ViewModuleState &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.tabId, tabId) || other.tabId == tabId) &&
            const DeepCollectionEquality()
                .equals(other._viewModules, _viewModules));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, error, tabId,
      const DeepCollectionEquality().hash(_viewModules));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ViewModuleStateCopyWith<_$_ViewModuleState> get copyWith =>
      __$$_ViewModuleStateCopyWithImpl<_$_ViewModuleState>(this, _$identity);
}

abstract class _ViewModuleState implements ViewModuleState {
  factory _ViewModuleState(
      {final Status status,
      final ErrorResponse error,
      final int tabId,
      final List<Widget> viewModules}) = _$_ViewModuleState;

  @override
  Status get status;
  @override
  ErrorResponse get error;
  @override
  int get tabId;
  @override
  List<Widget> get viewModules;
  @override
  @JsonKey(ignore: true)
  _$$_ViewModuleStateCopyWith<_$_ViewModuleState> get copyWith =>
      throw _privateConstructorUsedError;
}
