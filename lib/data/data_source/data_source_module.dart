import 'package:injectable/injectable.dart';

import 'mock/display/display.mock_api.dart';
import 'remote/display/display.api.dart';

@module
abstract class DataSourceModule {
  @singleton
  DisplayApi get displayApi => DisplayMockApi();
}
