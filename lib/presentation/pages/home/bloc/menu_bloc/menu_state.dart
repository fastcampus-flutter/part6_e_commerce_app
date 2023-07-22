part of 'menu_bloc.dart';

@freezed
class MenuState with _$MenuState {
  factory MenuState({
    @Default(Status.initial) Status status,
    @Default(MallType.market) MallType mallType,
    @Default(<Menu>[]) List<Menu> menus,
    @Default(ErrorResponse()) ErrorResponse error,
  }) = _MenuState;
}
