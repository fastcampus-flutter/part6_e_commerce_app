part of 'payment_bloc.dart';

abstract class PaymentEvent {}

class PayMoney extends PaymentEvent {
  final List<Cart> cartList;
  final BuildContext context;

  PayMoney({
    required this.cartList,
    required this.context,
  });
}
