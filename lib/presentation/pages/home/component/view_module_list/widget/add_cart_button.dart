import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../../core/theme/constant/app_colors.dart';
import '../../../../../../core/theme/constant/app_icons.dart';
import '../../../../../../domain/model/display/product_info/product_info.model.dart';
import '../../../../../main/bloc/cart_bloc/cart_bloc.dart';

class AddCartButton extends StatelessWidget {
  const AddCartButton(this.productInfo, {Key? key}) : super(key: key);
  final ProductInfo productInfo;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: 8,
      bottom: 8,
      child: GestureDetector(
        //TODO 장바구니 바텀시트 호출
        onTap: null,
        child: Container(
          decoration: BoxDecoration(
            color: Theme.of(context).primaryColor.withOpacity(0.47),
            shape: BoxShape.circle,
          ),
          width: 32,
          height: 32,
          child: Center(
            child: SvgPicture.asset(
              AppIcons.cart,
              width: 20,
              height: 20,
              colorFilter: ColorFilter.mode(
                AppColors.white,
                BlendMode.srcIn,
              ),
            ),
          ),
        ),
        onTap: () => context.read<CartBloc>().add(CartOpened(productInfo)),
      ),
    );
  }
}
