import 'package:flutter/material.dart';

import '../../../presentation/main/component/top_app_bar/widgets/svg_icon_button.dart';
import '../../theme/constant/app_icons.dart';
import '../../theme/custom/custom_font_weight.dart';
import '../../theme/custom/custom_theme.dart';

/// 96
const double _counterWidth = 96;

/// 36
const double _counterHeight = 36;

/// 16
const double _counterIconSize = 16;

/// 8
const double _counterIconPadding = 8;

class CartCountBtn extends StatelessWidget {
  final int quantity;
  final VoidCallback? increased;
  final VoidCallback? decreased;

  const CartCountBtn({
    required this.quantity,
    required this.decreased,
    required this.increased,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;

    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: colorScheme.outline),
        borderRadius: const BorderRadius.all(Radius.circular(4)),
      ),
      width: _counterWidth,
      height: _counterHeight,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SvgIconButton(
            icon: AppIcons.subtract,
            color: (quantity != 1)
                ? colorScheme.contentPrimary
                : colorScheme.contentFourth,
            padding: _counterIconPadding,
            size: _counterIconSize,
            onPressed: decreased,
          ),
          Text(
            '$quantity',
            style: textTheme.labelLarge.semiBold,
          ),
          SvgIconButton(
            icon: AppIcons.add,
            color: colorScheme.contentPrimary,
            padding: _counterIconPadding,
            size: _counterIconSize,
            onPressed: increased,
          ),
        ],
      ),
    );
  }
}
