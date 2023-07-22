import 'package:flutter/material.dart';

import 'factory/view_module_widget.dart';

class ViewModuleC extends StatelessWidget with ViewModuleWidget {
  const ViewModuleC({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.yellow,
      height: 200,
      child: Center(child: Text('ViewModuleC')),
    );
  }
}
