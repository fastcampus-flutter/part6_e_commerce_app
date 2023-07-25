import 'package:flutter/material.dart';

class CartBenefit extends StatelessWidget {
  const CartBenefit({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerRight,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Text(
        '로그인 후, 할인 및 적립 혜택 적용',
        style: Theme.of(context).textTheme.labelMedium?.copyWith(
              color: Colors.grey,
            ),
      ),
    );
  }
}
