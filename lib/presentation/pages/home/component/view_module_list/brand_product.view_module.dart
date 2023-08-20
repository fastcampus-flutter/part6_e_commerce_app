import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/theme/constant/app_icons.dart';
import '../../../../../core/theme/custom/custom_font_weight.dart';
import '../../../../../core/theme/custom/custom_theme.dart';
import '../../../../../core/utils/component/common_image.dart';
import '../../../../../core/utils/extensions.dart';
import '../../../../../domain/model/display/display.model.dart';
import '../../../../../domain/model/display/product_info/product_info.model.dart';
import 'factory/view_module_widget.dart';
import 'widget/view_module_padding.dart';
import 'widget/view_module_title.dart';

class BrandProductViewModule extends StatelessWidget with ViewModuleWidget {
  final ViewModule info;

  const BrandProductViewModule({
    Key? key,
    required this.info,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return ViewModulePadding(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ViewModuleTitle(
            title: info.title,
          ),
          SizedBox(
            height: 8,
          ),
          if (info.imageUrl.isNotEmpty)
            Padding(
              padding: EdgeInsets.only(bottom: 13),
              child: AspectRatio(
                aspectRatio: 343 / 173,
                child: CommonImage(info.imageUrl),
              ),
            ),
          if (info.subtitle.isNotEmpty)
            Padding(
              padding: EdgeInsets.only(
                bottom: 16,
              ),
              child: Text(
                info.subtitle,
                style: Theme.of(context)
                    .textTheme
                    .titleSmall
                    ?.copyWith(
                      color: colorScheme.contentSecondary,
                    )
                    .regular,
              ),
            ),
          Divider(
            thickness: 1,
            color: colorScheme.outline,
          ),
          SizedBox(
            height: 16,
          ),
          ListView.separated(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemBuilder: (_, index) {
              return _BrandProduct(
                productInfo: info.products[index],
              );
            },
            separatorBuilder: (_, __) {
              return const SizedBox(
                height: 8,
              );
            },
            itemCount: info.products.length,
          ),
          SizedBox(
            height: 8,
          ),
          Container(
            decoration: BoxDecoration(
              color: colorScheme.surface,
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(
                vertical: 12,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '전체보기',
                    style: textTheme.titleSmall
                        ?.copyWith(
                          color: colorScheme.contentPrimary,
                        )
                        .regular,
                  ),
                  SvgPicture.asset(
                    AppIcons.chevronRight,
                    width: 16,
                    height: 16,
                    colorFilter: ColorFilter.mode(
                      colorScheme.contentPrimary,
                      BlendMode.srcIn,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
        ],
      ),
    );
  }
}

class _BrandProduct extends StatelessWidget {
  final ProductInfo productInfo;

  const _BrandProduct({
    Key? key,
    required this.productInfo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var textStyle = Theme.of(context).textTheme;
    var colorScheme = Theme.of(context).colorScheme;

    return AspectRatio(
      aspectRatio: 343 / 61,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 49,
            height: 49,
            child: ClipRRect(
              borderRadius: BorderRadius.all(
                Radius.circular(5),
              ),
              child: CommonImage(productInfo.imageUrl),
            ),
          ),
          SizedBox(
            width: 11,
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    productInfo.title,
                    style: textStyle.labelLarge?.titleCopyWith(),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                  ),
                  Row(
                    children: [
                      Text(
                        '${productInfo.discrountRate}%',
                        style: textStyle.labelLarge?.discountRateCopyWith(),
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Text(
                        productInfo.price.toWon(),
                        style: textStyle.labelLarge?.priceCopyWith(),
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Text(
                        productInfo.originalPrice.toWon(),
                        style: textStyle.labelMedium?.originalPriceCopyWith(),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            width: 12,
          ),
          Padding(
            padding: EdgeInsets.only(top: 5),
            child: TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 10)
                    .copyWith(left: 8),
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    color: colorScheme.outline,
                  ),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(6.0),
                  ),
                ),
                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
              ),
              child: Row(
                children: [
                  SvgPicture.asset(
                    AppIcons.cart,
                    width: 18,
                    height: 18,
                    colorFilter: ColorFilter.mode(
                      colorScheme.contentPrimary,
                      BlendMode.srcIn,
                    ),
                  ),
                  SizedBox(width: 8),
                  Text(
                    '담기',
                    style: textStyle.titleSmall
                        ?.copyWith(
                          color: colorScheme.contentPrimary,
                        )
                        .regular,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
