import 'package:flutter/services.dart';
import 'package:kakao_flutter_sdk_user/kakao_flutter_sdk_user.dart';

import '../../../core/utils/exception/common_exception.dart';
import '../../../core/utils/logger.dart';
import '../../repository/repository.dart';
import '../base/remote.usecase.dart';

class LoginUsecase extends RemoteUsecase {
  @override
  Future<User?> call(Repository repository) async {
    if (await isKakaoTalkInstalled()) {
      try {
        await UserApi.instance.loginWithKakaoTalk();
      } catch (error) {
        if (error is KakaoAuthException &&
            (error.message?.contains('Cancelled') ?? false)) {
          return null;
        }

        await _loginWithKakaoAccount();
      }
    } else {
      await _loginWithKakaoAccount();
    }

    return await UserApi.instance.me();
  }

  Future<void> _loginWithKakaoAccount() async {
    try {
      await UserApi.instance.loginWithKakaoAccount();
    } catch (error) {
      if (error is PlatformException && error.code == 'CANCELED') {
        return null;
      }

      CustomLogger.logger.e('${error.toString()}');
      throw CommonException.setError(error);
    }
  }
}
