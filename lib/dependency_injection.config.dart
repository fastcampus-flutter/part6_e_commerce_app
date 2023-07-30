// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:lecture_e_commerce/data/data_source/data_source_module.dart'
    as _i13;
import 'package:lecture_e_commerce/data/data_source/local_storage/display.dao.dart'
    as _i5;
import 'package:lecture_e_commerce/data/data_source/remote/display/display.api.dart'
    as _i4;
import 'package:lecture_e_commerce/data/repository_impl/display.repository_impl.dart'
    as _i7;
import 'package:lecture_e_commerce/domain/repository/display.repository.dart'
    as _i6;
import 'package:lecture_e_commerce/domain/usecase/display/display.usecase.dart'
    as _i8;
import 'package:lecture_e_commerce/presentation/main/bloc/cart_bloc/cart_bloc.dart'
    as _i3;
import 'package:lecture_e_commerce/presentation/main/bloc/paymoent_bloc/payment_bloc.dart'
    as _i10;
import 'package:lecture_e_commerce/presentation/pages/cart_list/bloc/cart_list_bloc/cart_list_bloc.dart'
    as _i12;
import 'package:lecture_e_commerce/presentation/pages/home/bloc/menu_bloc/menu_bloc.dart'
    as _i9;
import 'package:lecture_e_commerce/presentation/pages/home/bloc/view_module_bloc/view_module_bloc.dart'
    as _i11;

extension GetItInjectableX on _i1.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final dataSourceModule = _$DataSourceModule();
    gh.factory<_i3.CartBloc>(() => _i3.CartBloc());
    gh.singleton<_i4.DisplayApi>(dataSourceModule.displayApi);
    gh.singleton<_i5.DisplayDao>(dataSourceModule.displayDao);
    gh.singleton<_i6.DisplayRepository>(_i7.DisplayRepositoryImpl(
      gh<_i4.DisplayApi>(),
      gh<_i5.DisplayDao>(),
    ));
    gh.singleton<_i8.DisplayUsecase>(
        _i8.DisplayUsecase(gh<_i6.DisplayRepository>()));
    gh.factory<_i9.MenuBloc>(() => _i9.MenuBloc(gh<_i8.DisplayUsecase>()));
    gh.factory<_i10.PaymentBloc>(() => _i10.PaymentBloc());
    gh.factory<_i11.ViewModuleBloc>(
        () => _i11.ViewModuleBloc(gh<_i8.DisplayUsecase>()));
    gh.factory<_i12.CartListBloc>(
        () => _i12.CartListBloc(gh<_i8.DisplayUsecase>()));
    return this;
  }
}

class _$DataSourceModule extends _i13.DataSourceModule {}
