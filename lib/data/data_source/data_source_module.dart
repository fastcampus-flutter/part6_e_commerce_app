import 'package:injectable/injectable.dart';

import 'local_storage/display.dao.dart';
import 'mock/display/display.mock_api.dart';
import 'remote/display/display.api.dart';

@module
abstract class DataSourceModule {
  @singleton
  DisplayApi get displayApi => DisplayMockApi();

  @singleton
  DisplayDao get displayDao => DisplayDao();
}
