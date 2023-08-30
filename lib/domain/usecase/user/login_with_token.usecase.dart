import 'package:firebase_auth/firebase_auth.dart' hide User;
import 'package:kakao_flutter_sdk_user/kakao_flutter_sdk_user.dart';

import '../../../core/utils/error/error_response.dart';
import '../../../core/utils/exception/common_exception.dart';
import '../../../core/utils/extensions.dart';
import '../../../core/utils/logger.dart';
import '../../model/common/result/result.dart';
import '../../repository/use.repository.dart';
import '../base/remote.usecase.dart';

class LoginWithTokenUsecase extends RemoteUsecase<UserRepository> {
  @override
  Future<Result<User>> call(UserRepository repository) async {
    // 토큰 유효성 확인 및 갱신
    if (await AuthApi.instance.hasToken()) {
      try {
        await UserApi.instance.accessTokenInfo();
      } catch (error) {
        CustomLogger.logger.e('${error.toString()}');
        throw CommonException.setError(error);
      }
    } else {
      return Result.failure(
        ErrorResponse(),
      );
    }

    var user = await UserApi.instance.me();
    final result = await repository.getCustomToken(
      userId: user.id.toString(),
      email:
          user.kakaoAccount?.email ?? '${user.id.toString()}@facammarket.com',
    );

    if (result.status.isSuccess) {
      await FirebaseAuth.instance.signInWithCustomToken(result.data ?? '');

      return Result.success(user);
    }

    return Result.failure(
      ErrorResponse(
        status: result.status,
        code: result.code,
        message: result.message,
      ),
    );
  }
}
