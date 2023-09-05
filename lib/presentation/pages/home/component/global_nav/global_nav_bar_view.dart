import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/utils/constant.dart';
import '../../../../../dependency_injection.dart';
import '../../../../../domain/model/display/menu/menu.model.dart';
import '../../../../main/component/placeholder/home_placeholder.dart';
import '../../bloc/menu_bloc/menu_bloc.dart';
import '../../bloc/view_module_bloc/view_module_bloc.dart';
import '../view_module_list/view_module_list.dart';

class GlobalNavBarView extends StatelessWidget {
  const GlobalNavBarView(this.mallType, this.menus, {super.key});

  final MallType mallType;
  final List<Menu> menus;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MenuBloc, MenuState>(
      builder: (context, state) {
        switch (state.status) {
          case Status.initial:
          case Status.loading:
            return const Expanded(
              child: Center(child: HomePlaceholder()),
            );
          case Status.success:
            return Expanded(
              child: TabBarView(
                children: List.generate(
                  state.menus.length,
                  (index) {
                    final tabId = menus[index].tabId;

                    return BlocProvider(
                      create: (_) => getIt<ViewModuleBloc>()
                        ..add(ViewModuleInitialized(tabId: tabId)),
                      child: ViewModuleList(tabId: tabId),
                    );
                  },
                ),
              ),
            );
          case Status.error:
            return const Center(child: Text('menu_module_bloc error'));
        }
      },
    );
  }
}
