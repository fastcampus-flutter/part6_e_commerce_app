import 'package:injectable/injectable.dart';

import '../../repository/use.repository.dart';
import '../base/remote.usecase.dart';

@singleton
class UserUsecase {
  final UserRepository _userRepository;

  UserUsecase(this._userRepository);

  Future<T> execute<T>({required RemoteUsecase usecase}) async {
    return await usecase(_userRepository);
  }
}
