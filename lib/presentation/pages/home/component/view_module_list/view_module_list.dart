import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/utils/extensions.dart';
import '../../../../main/component/placeholder/home_placeholder.dart';
import '../../bloc/view_module_bloc/view_module_bloc.dart';
import '../footer/footer.dart';

class ViewModuleList extends StatefulWidget {
  const ViewModuleList({required this.tabId, super.key});

  final int tabId;

  @override
  State<ViewModuleList> createState() => _ViewModuleListState();
}

class _ViewModuleListState extends State<ViewModuleList> {
  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      child: NotificationListener(
        child: BlocBuilder<ViewModuleBloc, ViewModuleState>(
          builder: (_, state) {
            return (state.status.isInitial || state.viewModules.isEmpty)
                ? const HomePlaceholder()
                : ListView(
                    children: [
                      ...state.viewModules,
                      if (state.status.isLoading)
                        const LoadingWidget(isBottom: true),
                      Footer(),
                    ],
                  );
          },
        ),
        onNotification: (ScrollNotification scrollNotification) {
          final maxScroll = scrollNotification.metrics.maxScrollExtent;
          final curScroll = scrollNotification.metrics.pixels;

          if (curScroll >= maxScroll * (0.9)) {
            context.read<ViewModuleBloc>().add(ViewModuleFetched());
          }

          return false;
        },
      ),
      onRefresh: () async => context
          .read<ViewModuleBloc>()
          .add(ViewModuleInitialized(tabId: widget.tabId, isRefresh: true)),
    );
  }
}

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({this.isBottom = false, super.key});

  final bool isBottom;

  @override
  Widget build(BuildContext context) {
    return (isBottom)
        ? SizedBox(
            height: 50,
            child: Center(
              child: SizedBox(
                width: 20,
                height: 20,
                child: CircularProgressIndicator(strokeWidth: 2),
              ),
            ),
          )
        : Center(
            child: CircularProgressIndicator(),
          );
  }
}
