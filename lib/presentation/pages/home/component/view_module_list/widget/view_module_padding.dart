import 'package:flutter/material.dart';

import '../../../../../../core/utils/constant.dart';

class ViewModulePadding extends StatelessWidget {
  final Widget child;

  const ViewModulePadding({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Constants.horizontalPadding,
      child: child,
    );
  }
}
