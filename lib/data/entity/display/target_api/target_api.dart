import 'package:hive_flutter/hive_flutter.dart';

part 'target_api.g.dart';

@HiveType(typeId: 10)
enum TargetApi {
  @HiveField(0)
  REMOTE,
  @HiveField(1)
  MOCK,
}
