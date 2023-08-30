import 'package:flutter/material.dart';

import '../../../../../core/utils/constant.dart';
import '../../../../../domain/model/display/display.model.dart';
import 'factory/view_module_widget.dart';
import 'widget/product_card.component.dart';
import 'widget/view_module_padding.dart';
import 'widget/view_module_subtitle.dart';
import 'widget/view_module_title.dart';

class ScrollViewModule extends StatelessWidget with ViewModuleWidget {
  final ViewModule info;

  const ScrollViewModule({Key? key, required this.info}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ViewModulePadding(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ViewModuleTitle(title: info.title),
              if (info.subtitle.isNotEmpty)
                ViewModuleSubtitle(subtitle: info.subtitle),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 10, bottom: 50),
          child: _ImageList(
            products: info.products,
          ),
        ),
      ],
    );
  }
}

class _ImageList extends StatelessWidget {
  final List<ProductInfo> products;

  const _ImageList({
    Key? key,
    required this.products,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 375 / 305,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        padding: Constants.horizontalPadding,
        itemBuilder: (_, index) {
          final productInfo = products[index];

          return AspectRatio(
            aspectRatio: 150 / 305,
            child: LargeProductCard(context: context, productInfo: productInfo),
          );
        },
        separatorBuilder: (_, __) => const SizedBox(
          width: 8,
        ),
        itemCount: products.length,
      ),
    );
  }
}
