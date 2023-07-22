import 'package:flutter/material.dart';

import 'factory/view_module_widget.dart';

class ViewModuleA extends StatelessWidget with ViewModuleWidget {
  const ViewModuleA({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      height: 200,
      child: Center(child: Text('ViewModuleA')),
    );
  }
}
