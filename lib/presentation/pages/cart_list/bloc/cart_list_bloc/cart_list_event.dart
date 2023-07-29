part of 'cart_list_bloc.dart';

abstract class CartListEvent {
  const CartListEvent();
}

class CartListInitialized extends CartListEvent {
  CartListInitialized();
}

class CartListGetList extends CartListEvent {
  CartListGetList();
}

class CartListAdded extends CartListEvent {
  final int quantity;
  final ProductInfo productInfo;

  CartListAdded({required this.quantity, required this.productInfo});
}

class CartListSelectedAll extends CartListEvent {
  CartListSelectedAll();
}

class CartListSelected extends CartListEvent {
  final Cart cart;

  CartListSelected({required this.cart});
}
