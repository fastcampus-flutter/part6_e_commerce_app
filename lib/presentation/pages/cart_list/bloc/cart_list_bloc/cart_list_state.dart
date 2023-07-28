part of 'cart_list_bloc.dart';

@freezed
class CartListState with _$CartListState {
  factory CartListState({
    @Default(Status.initial) Status status,
    @Default(ErrorResponse()) ErrorResponse error,
    @Default(<Cart>[]) List<Cart> cartList,
    @Default(<String>[]) List<String> selectedProduct,
    @Default(0) int totalPrice,
  }) = _CartListState;
}
