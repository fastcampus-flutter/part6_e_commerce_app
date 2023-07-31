import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../../dto/common/response_wrapper/response_wrapper.dart';

part 'user.api.g.dart';

const String _baseUrl = 'https://us-central1-market-7b554.cloudfunctions.net/';

@RestApi(baseUrl: _baseUrl)
abstract class UserApi {
  factory UserApi(Dio _dio) = _UserApi;

  @POST('/createCustomToken')
  Future<ResponseWrapper<String>> getCustomToken({
    @Body() required Map<String, dynamic> params,
  });
}
