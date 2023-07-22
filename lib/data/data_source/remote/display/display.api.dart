import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

import '../../../dto/common/response_wrapper/response_wrapper.dart';
import '../../../dto/display/display.dto.dart';

part 'display.api.g.dart';

@RestApi()
abstract class DisplayApi {
  factory DisplayApi(Dio _dio) = _DisplayApi;

  @GET('/api/menus/{mall_type}')
  Future<ResponseWrapper<List<MenuDto>>> getMenusByMallType(
    @Path('mall_type') String mallType,
  );

  @GET('/api/view-modules/{tab_id}')
  Future<ResponseWrapper<List<ViewModuleDto>>> getViewModulesByTabId(
    @Path('tab_id') int tabId,
  );
}
