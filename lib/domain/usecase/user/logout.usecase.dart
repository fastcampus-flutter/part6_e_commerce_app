import 'package:firebase_auth/firebase_auth.dart';
import 'package:kakao_flutter_sdk_user/kakao_flutter_sdk_user.dart';

import '../../repository/repository.dart';
import '../../repository/use.repository.dart';
import '../base/remote.usecase.dart';

class LogoutUsecase extends RemoteUsecase<UserRepository> {
  @override
  Future<void> call(Repository repository) async {
    await UserApi.instance.logout();
    await FirebaseAuth.instance.signOut();
  }
}
