import 'package:get_it/get_it.dart';

import 'data/data_source/mock/display/display.mock_api.dart';
import 'data/data_source/remote/display/display.api.dart';
import 'data/repository_impl/display.repository_impl.dart';
import 'domain/repository/display.repository.dart';
import 'domain/usecase/display/display.usecase.dart';

final getIt = GetIt.instance;

void configureDependencies() {
  _dataLayer();
  _domainLayer();
}

void _dataLayer() {
  getIt.registerSingleton<DisplayApi>(DisplayMockApi());
}

void _domainLayer() {
  //repository
  getIt.registerSingleton<DisplayRepository>(
    DisplayRepositoryImpl(getIt<DisplayApi>()),
  );

  //usecase
  getIt.registerSingleton<DisplayUsecase>(
    DisplayUsecase(getIt<DisplayRepository>()),
  );
}
