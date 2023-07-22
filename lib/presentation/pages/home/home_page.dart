import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/utils/constant.dart';
import '../../../core/utils/dialog/common_dialog.dart';
import '../../../core/utils/extensions.dart';
import '../../../dependency_injection.dart';
import '../../../domain/usecase/display/display.usecase.dart';
import '../../main/cubit/mall_type_cubit.dart';
import 'bloc/menu_bloc/menu_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MallTypeCubit, MallType>(
      builder: (_, state) {
        return BlocProvider(
          create: (_) => MenuBloc(getIt<DisplayUsecase>())
            ..add(MenuInitialized(mallType: state)),
          child: const HomeView(),
        );
      },
    );
  }
}

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<MallTypeCubit, MallType>(
      listener: (_, state) =>
          context.read<MenuBloc>().add(MenuInitialized(mallType: state)),
      listenWhen: (prev, cur) => prev.index != cur.index,
      child: BlocConsumer<MenuBloc, MenuState>(
        builder: (_, state) {
          switch (state.status) {
            case Status.initial:
            case Status.loading:
              return const Center(child: CircularProgressIndicator());
            case Status.success:
              return Text('${state.menus}');
            case Status.error:
              return const Center(child: Text('error'));
          }
        },
        listener: (context, state) async {
          if (state.status.isError) {
            final bool result = (await CommonDialog.errorDialog(
                  context,
                  state.error,
                )) ??
                false;
            if (result) {
              context.read<MenuBloc>().add(MenuInitialized());
            }
          }
        },
        listenWhen: (prev, curr) => prev.status != curr.status,
      ),
    );
  }
}
