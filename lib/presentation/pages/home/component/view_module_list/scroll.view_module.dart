import 'package:flutter/material.dart';

import '../../../../../domain/model/display/display.model.dart';
import 'factory/view_module_widget.dart';
import 'widget/product_card_widget.dart';

class ScrollViewModule extends StatelessWidget with ViewModuleWidget {
  final ViewModule info;

  const ScrollViewModule({Key? key, required this.info}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ProductCardWidget(
      productInfo: info.products[0],
      imageAspect: 150 / 195,
    );
  }
}
