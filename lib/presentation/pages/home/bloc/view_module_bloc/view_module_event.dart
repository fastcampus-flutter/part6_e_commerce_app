part of 'view_module_bloc.dart';

abstract class ViewModuleEvent {
  const ViewModuleEvent();
}

class ViewModuleInitialized extends ViewModuleEvent {
  final int tabId;
  final bool isRefresh;

  ViewModuleInitialized({required this.tabId, this.isRefresh = false});
}

class ViewModuleFetched extends ViewModuleEvent {
  ViewModuleFetched();
}
