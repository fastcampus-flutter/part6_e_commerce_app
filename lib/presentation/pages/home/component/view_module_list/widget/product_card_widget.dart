import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../../core/theme/constant/app_icons.dart';
import '../../../../../../core/theme/custom/custom_theme.dart';
import '../../../../../../core/utils/extensions.dart';
import '../../../../../../domain/model/display/product_info/product_info.model.dart';
import 'add_cart_button.dart';

class ProductCardWidget extends StatelessWidget {
  final ProductInfo productInfo;
  final double imageAspect;

  const ProductCardWidget(
      {Key? key, required this.productInfo, required this.imageAspect})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            AspectRatio(
              aspectRatio: imageAspect,
              child: Image.network(
                productInfo.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
            AddCartButton(),
          ],
        ),
        const SizedBox(
          height: 9,
        ),
        Text(
          productInfo.title,
          overflow: TextOverflow.ellipsis,
          maxLines: 2,
        ),
        const SizedBox(height: 1),
        Row(
          children: [
            Text('${productInfo.discrountRate.toString()}%'),
            const SizedBox(
              height: 4,
            ),
            Text(
              productInfo.price.toWon(),
            ),
          ],
        ),
        const SizedBox(height: 2),
        Text(
          productInfo.originalPrice.toWon(),
        ),
        const SizedBox(height: 8),
        Row(
          children: [
            SvgPicture.asset(
              AppIcons.chat,
              width: 13,
              height: 13,
              colorFilter: ColorFilter.mode(
                Theme.of(context).colorScheme.contentTertiary,
                BlendMode.srcIn,
              ),
            ),
            const SizedBox(
              width: 4,
            ),
            Text('후기 ${productInfo.reviewCount.toReview()}'),
          ],
        ),
      ],
    );
  }
}
