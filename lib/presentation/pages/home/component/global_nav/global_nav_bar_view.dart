import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/utils/constant.dart';
import '../../../../../domain/model/display/menu/menu.model.dart';
import '../../bloc/menu_bloc/menu_bloc.dart';

class GlobalNavBarView extends StatelessWidget {
  const GlobalNavBarView(this.mallType, this.menus, {super.key});

  final MallType mallType;
  final List<Menu> menus;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MenuBloc, MenuState>(
      builder: (context, state) {
        return Expanded(
          child: TabBarView(
            children: List.generate(
              state.menus.length,
              (index) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('mallType: $mallType '),
                    Text('title : ${menus[index].title}'),
                  ],
                );
              },
            ),
          ),
        );
      },
    );
  }
}
