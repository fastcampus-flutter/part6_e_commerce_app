import 'package:freezed_annotation/freezed_annotation.dart';

part 'view_module.model.freezed.dart';

part 'view_module.model.g.dart';

@freezed
class ViewModule with _$ViewModule {
  const factory ViewModule({
    required String type,
    required String title,
    required String subtitle,
    required String imageUrl,
  }) = _ViewModule;

  factory ViewModule.fromJson(Map<String, Object?> json) =>
      _$ViewModuleFromJson(json);
}
