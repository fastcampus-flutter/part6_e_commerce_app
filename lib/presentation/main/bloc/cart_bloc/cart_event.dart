part of 'cart_bloc.dart';

abstract class CartEvent {
  const CartEvent();
}

class CartInitialized extends CartEvent {
  CartInitialized();
}

class CartOpened extends CartEvent {
  final ProductInfo productInfo;
  final int quantity;

  CartOpened(this.productInfo, {this.quantity = 1});
}

class CartClosed extends CartEvent {
  CartClosed();
}

class CartQuantityIncreased extends CartEvent {
  CartQuantityIncreased();
}

class CartQuantityDecreased extends CartEvent {
  CartQuantityDecreased();
}
