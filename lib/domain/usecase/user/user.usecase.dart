import 'package:injectable/injectable.dart';

import '../../repository/use.repository.dart';
import '../base/remote.usecase.dart';

@singleton
class UserUSecase {
  final UserRepository _userRepository;

  UserUSecase(this._userRepository);

  Future execute<T>({required RemoteUsecase usecase}) async {
    return await usecase(_userRepository);
  }
}
