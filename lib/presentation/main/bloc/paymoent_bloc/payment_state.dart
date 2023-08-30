part of 'payment_bloc.dart';

@freezed
class PaymentState with _$PaymentState {
  factory PaymentState({
    @Default(PaymentStatus.initial) PaymentStatus status,
    List<String>? productIds,
    String? message,
  }) = _PaymentState;
}
