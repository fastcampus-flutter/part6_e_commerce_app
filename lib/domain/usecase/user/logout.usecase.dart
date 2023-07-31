import 'package:kakao_flutter_sdk_user/kakao_flutter_sdk_user.dart';

import '../../repository/repository.dart';
import '../base/remote.usecase.dart';

class LogoutUsecase extends RemoteUsecase {
  @override
  Future<void> call(Repository repository) async {
    await UserApi.instance.logout();
  }
}
