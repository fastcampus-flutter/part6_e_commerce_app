import 'package:flutter/material.dart';

import 'factory/view_module_widget.dart';

class ViewModuleB extends StatelessWidget with ViewModuleWidget {
  const ViewModuleB({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.orange,
      height: 200,
      child: Center(child: Text('ViewModuleB')),
    );
  }
}
