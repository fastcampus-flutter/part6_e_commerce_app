part of 'cart_list_bloc.dart';

@freezed
class CartListState with _$CartListState {
  factory CartListState({
    @Default(Status.initial) Status status,
    @Default(ErrorResponse()) ErrorResponse error,
    @Default(<Cart>[]) List<Cart> cartList,
  }) = _CartListState;
}
