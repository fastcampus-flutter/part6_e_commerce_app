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
    as _i18;
import 'package:lecture_e_commerce/data/data_source/local_storage/display.dao.dart'
    as _i5;
import 'package:lecture_e_commerce/data/data_source/remote/display/display.api.dart'
    as _i4;
import 'package:lecture_e_commerce/data/data_source/remote/user/user.api.dart'
    as _i11;
import 'package:lecture_e_commerce/data/repository_impl/display.repository_impl.dart'
    as _i7;
import 'package:lecture_e_commerce/domain/repository/display.repository.dart'
    as _i6;
import 'package:lecture_e_commerce/domain/usecase/display/display.usecase.dart'
    as _i8;
import 'package:lecture_e_commerce/presentation/main/bloc/cart_bloc/cart_bloc.dart'
    as _i3;
import 'package:lecture_e_commerce/presentation/pages/cart_list/bloc/cart_list_bloc/cart_list_bloc.dart'
    as _i11;
import 'package:lecture_e_commerce/presentation/pages/home/bloc/menu_bloc/menu_bloc.dart'
    as _i9;
import 'package:lecture_e_commerce/presentation/pages/home/bloc/view_module_bloc/view_module_bloc.dart'
    as _i10;
import 'package:lecture_e_commerce/data/repository_impl/user.repository_impl.dart'
    as _i13;
import 'package:lecture_e_commerce/domain/repository/display.repository.dart'
    as _i6;
import 'package:lecture_e_commerce/domain/repository/use.repository.dart'
    as _i12;
import 'package:lecture_e_commerce/domain/usecase/display/display.usecase.dart'
    as _i8;
import 'package:lecture_e_commerce/domain/usecase/user/user.usecase.dart'
    as _i14;
import 'package:lecture_e_commerce/presentation/main/bloc/cart_bloc/cart_bloc.dart'
    as _i3;
import 'package:lecture_e_commerce/presentation/main/bloc/paymoent_bloc/payment_bloc.dart'
    as _i10;
import 'package:lecture_e_commerce/presentation/main/bloc/user_bloc/user_bloc.dart'
    as _i17;
import 'package:lecture_e_commerce/presentation/pages/cart_list/bloc/cart_list_bloc/cart_list_bloc.dart'
    as _i16;
import 'package:lecture_e_commerce/presentation/pages/home/bloc/menu_bloc/menu_bloc.dart'
    as _i9;
import 'package:lecture_e_commerce/presentation/pages/home/bloc/view_module_bloc/view_module_bloc.dart'
    as _i15;

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
    gh.singleton<_i11.UserApi>(dataSourceModule.userApi);
    gh.singleton<_i12.UserRepository>(
        _i13.UserRepositoryImpl(gh<_i11.UserApi>()));
    gh.singleton<_i14.UserUsecase>(_i14.UserUsecase(gh<_i12.UserRepository>()));
    gh.factory<_i15.ViewModuleBloc>(
        () => _i15.ViewModuleBloc(gh<_i8.DisplayUsecase>()));
    gh.factory<_i16.CartListBloc>(
        () => _i16.CartListBloc(gh<_i8.DisplayUsecase>()));
    gh.factory<_i17.UserBloc>(() => _i17.UserBloc(gh<_i14.UserUsecase>()));
    return this;
  }
}


class _$DataSourceModule extends _i18.DataSourceModule {}
