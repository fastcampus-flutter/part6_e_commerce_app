import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

import '../../../dto/display/menu/menu.dto.dart';

part 'display.api.g.dart';

@RestApi()
abstract class DisplayApi {
  factory DisplayApi(Dio _dio) = _DisplayApi;

  @GET('/api/menus/{mall_type}')
  Future<List<MenuDto>> getMenusByMallType(@Path('mall_type') String mallType);
}
