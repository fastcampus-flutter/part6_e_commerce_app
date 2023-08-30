import 'package:injectable/injectable.dart';

import '../../domain/repository/use.repository.dart';
import '../data_source/remote/user/user.api.dart';
import '../dto/common/response_wrapper/response_wrapper.dart';
import '../mapper/common.mapper.dart';

@Singleton(as: UserRepository)
class UserRepositoryImpl implements UserRepository {
  final UserApi _userApi;

  UserRepositoryImpl(this._userApi);

  @override
  Future<ResponseWrapper<String>> getCustomToken({
    required String userId,
    String? email,
  }) async {
    final response = await _userApi
        .getCustomToken(params: {'userId': userId, 'email': email});

    return response.toModel<String>(response.data ?? '');
  }
}
