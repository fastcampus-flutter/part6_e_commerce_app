// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CartListState {
  Status get status => throw _privateConstructorUsedError;
  ErrorResponse get error => throw _privateConstructorUsedError;
  List<Cart> get cartList => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CartListStateCopyWith<CartListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartListStateCopyWith<$Res> {
  factory $CartListStateCopyWith(
          CartListState value, $Res Function(CartListState) then) =
      _$CartListStateCopyWithImpl<$Res, CartListState>;
  @useResult
  $Res call({Status status, ErrorResponse error, List<Cart> cartList});
}

/// @nodoc
class _$CartListStateCopyWithImpl<$Res, $Val extends CartListState>
    implements $CartListStateCopyWith<$Res> {
  _$CartListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? error = null,
    Object? cartList = null,
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
      cartList: null == cartList
          ? _value.cartList
          : cartList // ignore: cast_nullable_to_non_nullable
              as List<Cart>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CartListStateCopyWith<$Res>
    implements $CartListStateCopyWith<$Res> {
  factory _$$_CartListStateCopyWith(
          _$_CartListState value, $Res Function(_$_CartListState) then) =
      __$$_CartListStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Status status, ErrorResponse error, List<Cart> cartList});
}

/// @nodoc
class __$$_CartListStateCopyWithImpl<$Res>
    extends _$CartListStateCopyWithImpl<$Res, _$_CartListState>
    implements _$$_CartListStateCopyWith<$Res> {
  __$$_CartListStateCopyWithImpl(
      _$_CartListState _value, $Res Function(_$_CartListState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? error = null,
    Object? cartList = null,
  }) {
    return _then(_$_CartListState(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ErrorResponse,
      cartList: null == cartList
          ? _value._cartList
          : cartList // ignore: cast_nullable_to_non_nullable
              as List<Cart>,
    ));
  }
}

/// @nodoc

class _$_CartListState implements _CartListState {
  _$_CartListState(
      {this.status = Status.initial,
      this.error = const ErrorResponse(),
      final List<Cart> cartList = const <Cart>[]})
      : _cartList = cartList;

  @override
  @JsonKey()
  final Status status;
  @override
  @JsonKey()
  final ErrorResponse error;
  final List<Cart> _cartList;
  @override
  @JsonKey()
  List<Cart> get cartList {
    if (_cartList is EqualUnmodifiableListView) return _cartList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cartList);
  }

  @override
  String toString() {
    return 'CartListState(status: $status, error: $error, cartList: $cartList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CartListState &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.error, error) || other.error == error) &&
            const DeepCollectionEquality().equals(other._cartList, _cartList));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, error,
      const DeepCollectionEquality().hash(_cartList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CartListStateCopyWith<_$_CartListState> get copyWith =>
      __$$_CartListStateCopyWithImpl<_$_CartListState>(this, _$identity);
}

abstract class _CartListState implements CartListState {
  factory _CartListState(
      {final Status status,
      final ErrorResponse error,
      final List<Cart> cartList}) = _$_CartListState;

  @override
  Status get status;
  @override
  ErrorResponse get error;
  @override
  List<Cart> get cartList;
  @override
  @JsonKey(ignore: true)
  _$$_CartListStateCopyWith<_$_CartListState> get copyWith =>
      throw _privateConstructorUsedError;
}
