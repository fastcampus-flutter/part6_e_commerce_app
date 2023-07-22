import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'dependency_injection.config.dart';

final getIt = GetIt.instance;

@InjectableInit()
void configureDependencies() => getIt.init();
// void configureDependencies() {
//   _dataLayer();
//   _domainLayer();
//   _presentationLayer();
// }
//
// void _dataLayer() {
//   getIt.registerSingleton<DisplayApi>(DisplayMockApi());
// }
//
// void _domainLayer() {
//   //repository
//   getIt.registerSingleton<DisplayRepository>(
//     DisplayRepositoryImpl(getIt<DisplayApi>()),
//   );
//
//   //usecase
//   getIt.registerSingleton<DisplayUsecase>(
//     DisplayUsecase(getIt<DisplayRepository>()),
//   );
// }
//
// void _presentationLayer() {
//   /// menu bloc
//   getIt.registerFactory<MenuBloc>(() => MenuBloc(getIt<DisplayUsecase>()));
//
//   /// view_module bloc
//   getIt.registerFactory<ViewModuleBloc>(
//     () => ViewModuleBloc(getIt<DisplayUsecase>()),
//   );
// }
