part of 'view_module_bloc.dart';

@freezed
class ViewModuleState with _$ViewModuleState {
  factory ViewModuleState({
    @Default(Status.initial) Status status,
    @Default(ErrorResponse()) ErrorResponse error,
    @Default(0) int tabId,
    @Default(<ViewModule>[]) List<ViewModule> viewModules,
  }) = _ViewModuleState;
}
