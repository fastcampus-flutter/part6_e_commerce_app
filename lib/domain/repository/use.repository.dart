import '../../data/dto/common/response_wrapper/response_wrapper.dart';
import 'repository.dart';

abstract class UserRepository extends Repository {
  Future<ResponseWrapper<String>> getCustomToken({
    required String userId,
    String? email,
  });
}
