import 'package:hive_flutter/hive_flutter.dart';

import '../view_module/view_module.entity.dart';

part 'view_module_list.entity.g.dart';

@HiveType(typeId: 3)
class ViewModuleListEntity extends HiveObject {
  @HiveField(0, defaultValue: [])
  List<ViewModuleEntity> viewModules;

  ViewModuleListEntity({required this.viewModules});
}
