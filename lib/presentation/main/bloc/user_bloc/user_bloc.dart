import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kakao_flutter_sdk_user/kakao_flutter_sdk_user.dart';

import '../../../../core/utils/constant.dart';
import '../../../../core/utils/error/error_response.dart';
import '../../../../core/utils/exception/common_exception.dart';
import '../../../../core/utils/logger.dart';
import '../../../../domain/usecase/user/login.usecase.dart';
import '../../../../domain/usecase/user/login_with_token.usecase.dart';
import '../../../../domain/usecase/user/logout.usecase.dart';
import '../../../../domain/usecase/user/user.usecase.dart';

part 'user_event.dart';

part 'user_state.dart';

part 'user_bloc.freezed.dart';

@injectable
class UserBloc extends Bloc<UserEvent, UserState> {
  final UserUsecase _userUsecase;

  UserBloc(this._userUsecase) : super(UserState()) {
    on<UserLogin>(_onUserLogin);
    on<UserLoginWithToken>(_onUserLoginWithToken);
    on<UserLogout>(_onUserLogout);
  }

  Future<void> _onUserLogin(
    UserLogin event,
    Emitter<UserState> emit,
  ) async {
    try {
      emit(state.copyWith(status: Status.loading));

      final User? user = await _userUsecase.execute(usecase: LoginUsecase());

      if (user == null) {
        emit(state.copyWith(status: Status.initial));
      } else {
        emit(state.copyWith(status: Status.success, user: user));
      }
    } on ErrorResponse catch (error) {
      emit(state.copyWith(
        status: Status.error,
        error: error,
      ));
    } catch (error) {
      CustomLogger.logger.e(error);
      emit(state.copyWith(
        status: Status.error,
        error: CommonException.setError(error),
      ));
    }
  }

  Future<void> _onUserLoginWithToken(
    UserLoginWithToken event,
    Emitter<UserState> emit,
  ) async {
    emit(state.copyWith(status: Status.loading));
    try {
      final User? user =
          await _userUsecase.execute(usecase: LoginWithTokenUsecase());

      // 기존 로그인 된 유저 정보 존재하지 않는 경우
      if (user == null) {
        emit(state.copyWith(status: Status.initial));
      }
      // 토큰 갱신 성공
      else {
        emit(state.copyWith(status: Status.success, user: user));
      }
    } on ErrorResponse catch (error) {
      emit(state.copyWith(
        status: Status.error,
        error: error,
      ));
    } catch (error) {
      CustomLogger.logger.e(error);
      emit(state.copyWith(
        status: Status.error,
        error: CommonException.setError(error),
      ));
    }
  }

  Future<void> _onUserLogout(
    UserLogout event,
    Emitter<UserState> emit,
  ) async {
    emit(state.copyWith(status: Status.loading));
    try {
      await _userUsecase.execute(usecase: LogoutUsecase());
      emit(state.copyWith(status: Status.initial, user: null));
    } on ErrorResponse catch (error) {
      emit(state.copyWith(
        status: Status.error,
        error: error,
      ));
    } catch (error) {
      CustomLogger.logger.e(error);
      emit(state.copyWith(
        status: Status.error,
        error: CommonException.setError(error),
      ));
    }
  }
}
