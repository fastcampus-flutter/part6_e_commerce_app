import 'package:freezed_annotation/freezed_annotation.dart';

part 'menu.model.freezed.dart';

part 'menu.model.g.dart';

@freezed
class Menu with _$Menu {
  const factory Menu({
    required int tabId,
    required String title,
  }) = _Menu;

  factory Menu.fromJson(Map<String, dynamic> json) => _$MenuFromJson(json);
}
