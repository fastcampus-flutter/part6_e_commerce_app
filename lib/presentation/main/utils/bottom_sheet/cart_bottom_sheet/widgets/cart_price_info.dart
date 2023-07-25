import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../core/theme/constant/app_icons.dart';
import '../../../../../../core/theme/custom/custom_theme.dart';
import '../../../../../../core/utils/extensions.dart';
import '../../../../bloc/cart_bloc/cart_bloc.dart';
import '../../../../component/top_app_bar/widgets/svg_icon_button.dart';

class CartPriceInfo extends StatelessWidget {
  const CartPriceInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final state = context.watch<CartBloc>().state;

    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 16,
        horizontal: 20,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            state.productInfo.title,
            style: Theme.of(context).textTheme.titleSmall,
            overflow: TextOverflow.ellipsis,
            maxLines: 3,
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Text(
                    state.productInfo.price.toWon(),
                    style:
                        Theme.of(context).textTheme.titleSmall?.priceCopyWith(),
                  ),
                ],
              ),
              Container(
                decoration: BoxDecoration(
                  border: const Border.fromBorderSide(
                    BorderSide(color: Colors.grey),
                  ),
                  borderRadius: const BorderRadius.all(Radius.circular(6)),
                ),
                width: 100,
                height: 30,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SvgIconButton(
                      icon: AppIcons.subtract,
                      color: Theme.of(context).colorScheme.contentPrimary,
                      onPressed: null,
                    ),
                    Text('${state.quantity}'),
                    SvgIconButton(
                      icon: AppIcons.add,
                      color: Theme.of(context).colorScheme.contentPrimary,
                      onPressed: null,
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          const Divider(thickness: 1),
        ],
      ),
    );
  }
}
