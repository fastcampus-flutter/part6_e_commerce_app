import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/theme/constant/app_colors.dart';
import '../../../../core/theme/constant/app_icons.dart';
import '../../../../core/utils/error/error_response.dart';
import '../../../presentation/routes/route_path.dart';

class CommonSnackBar {
  CommonSnackBar();

  static errorSnackBar(BuildContext context, {required ErrorResponse error}) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Row(
          children: [
            SvgPicture.asset(
              AppIcons.closeCircleFill,
              colorFilter: ColorFilter.mode(
                AppColors.error,
                BlendMode.srcIn,
              ),
            ),
            const SizedBox(width: 8),
            Text('${error.message}'),
          ],
        ),
        duration: Duration(seconds: 2),
      ),
    );
  }

  static successSnackBar(BuildContext context, {required String msg}) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Row(
          children: [
            SvgPicture.asset(
              AppIcons.checkMark,
              colorFilter: ColorFilter.mode(
                AppColors.positive,
                BlendMode.srcIn,
              ),
            ),
            const SizedBox(width: 8),
            Text(msg),
          ],
        ),
        duration: Duration(seconds: 2),
      ),
    );
  }

  static addCartSnackBar(BuildContext context) {
    print('[test] dddd');

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                SvgPicture.asset(
                  AppIcons.cart,
                  colorFilter: ColorFilter.mode(
                    AppColors.white,
                    BlendMode.srcIn,
                  ),
                ),
                const SizedBox(width: 8),
                Text('상품을 장바구니에 담았습니다.'),
              ],
            ),
            InkWell(
              child: Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.inversePrimary,
                  borderRadius: const BorderRadius.all(Radius.circular(6)),
                ),
                width: 93,
                height: 34,
                child: Center(
                  child: Text(
                    '장바구니 보기',
                    style: Theme.of(context).textTheme.titleSmall?.copyWith(
                          color: Theme.of(context).colorScheme.onPrimary,
                        ),
                  ),
                ),
              ),
              onTap: () {
                context.push(RoutePath.cartList);
                ScaffoldMessenger.of(context)
                    .hideCurrentSnackBar(reason: SnackBarClosedReason.action);
              },
            ),
          ],
        ),
        duration: Duration(seconds: 2),
      ),
    );
  }
}
