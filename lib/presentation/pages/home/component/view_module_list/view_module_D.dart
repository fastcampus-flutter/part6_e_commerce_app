import 'package:flutter/material.dart';

import 'factory/view_module_widget.dart';

class ViewModuleD extends StatelessWidget with ViewModuleWidget {
  const ViewModuleD({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      height: 200,
      child: Center(child: Text('ViewModuleD')),
    );
  }
}
