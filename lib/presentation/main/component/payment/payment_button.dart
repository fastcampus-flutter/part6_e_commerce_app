import 'package:flutter/material.dart';

import '../../../../core/utils/constant.dart';
import '../../../../core/utils/extensions.dart';
import '../../../../domain/model/display/cart/cart.model.dart';

class PaymentButton extends StatelessWidget {
  final List<Cart> selectedCartList;
  final int totalPrice;

  const PaymentButton({
    Key? key,
    required this.selectedCartList,
    required this.totalPrice,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Constants.horizontalPadding,
      child: SizedBox(
        height: 48,
        child: TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(
            backgroundColor: selectedCartList.isNotEmpty
                ? Theme.of(context).primaryColor
                : Colors.grey[400] ?? Colors.grey,
            shape: RoundedRectangleBorder(
              borderRadius: const BorderRadius.all(
                Radius.circular(8.0),
              ),
            ),
          ),
          child: Center(
            child: Text(
              selectedCartList.isNotEmpty
                  ? '${totalPrice.toWon()} 결제하기'
                  : '상품을 선택해주세요',
              style: Theme.of(context).textTheme.titleSmall?.copyWith(
                    color: Theme.of(context).colorScheme.onPrimary,
                  ),
            ),
          ),
        ),
      ),
      // ),
    );
  }
}
