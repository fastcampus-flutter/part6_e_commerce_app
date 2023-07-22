part of 'view_module_bloc.dart';

abstract class ViewModuleEvent {
  const ViewModuleEvent();
}

class ViewModuleInitialized extends ViewModuleEvent {
  final int tabId;

  ViewModuleInitialized({required this.tabId});
}
