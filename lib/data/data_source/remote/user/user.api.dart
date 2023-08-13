import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../../dto/common/response_wrapper/response_wrapper.dart';

part 'user.api.g.dart';

@RestApi()
abstract class UserApi {
  factory UserApi(Dio _dio) = _UserApi;

  @POST('/createCustomToken')
  Future<ResponseWrapper<String>> getCustomToken({
    @Body() required Map<String, dynamic> params,
  });
}
