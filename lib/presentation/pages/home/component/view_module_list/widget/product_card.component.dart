import 'package:flutter/material.dart';

import 'product_card_widget.dart';

class LargeProductCard extends ProductCardWidget {
  final BuildContext context;

  LargeProductCard({
    required this.context,
    required super.productInfo,
  }) : super(
          imageAspect: 150 / 195,
          needShowReviewCount: true,
          titleStyle: Theme.of(context).textTheme.titleSmall,
          priceStyle: Theme.of(context).textTheme.titleSmall,
          originalPriceStyle: Theme.of(context).textTheme.labelMedium,
          reviewStyle: Theme.of(context).textTheme.labelSmall,
        );
}

class SmallProductCard extends ProductCardWidget {
  final BuildContext context;

  SmallProductCard({
    required this.context,
    required super.productInfo,
  }) : super(
          imageAspect: 114 / 152,
          needShowReviewCount: false,
          titleStyle: Theme.of(context).textTheme.labelMedium,
          priceStyle: Theme.of(context).textTheme.labelMedium,
          originalPriceStyle: Theme.of(context).textTheme.labelMedium,
          reviewStyle: Theme.of(context).textTheme.labelSmall,
        );
}
