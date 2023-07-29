import 'package:injectable/injectable.dart';

import '../../core/utils/constant.dart';
import '../../domain/model/display/cart/cart.model.dart';
import '../../domain/model/display/menu/menu.model.dart';
import '../../domain/model/display/view_module/view_module.model.dart';
import '../../domain/repository/display.repository.dart';
import '../data_source/local_storage/display.dao.dart';
import '../data_source/remote/display/display.api.dart';
import '../dto/common/response_wrapper/response_wrapper.dart';
import '../mapper/common.mapper.dart';
import '../mapper/display.mapper.dart';

@Singleton(as: DisplayRepository)
class DisplayRepositoryImpl implements DisplayRepository {
  final DisplayApi _displayApi;
  final DisplayDao _displayDao;

  DisplayRepositoryImpl(this._displayApi, this._displayDao);

  @override
  Future<ResponseWrapper<List<Menu>>> getMenusByMallType({
    required MallType mallType,
  }) async {
    final response = await _displayApi.getMenusByMallType(mallType.name);

    return response.toModel<List<Menu>>(
      response.data?.map((menuDto) => menuDto.toModel()).toList() ?? [],
    );
  }

  @override
  Future<ResponseWrapper<List<ViewModule>>> getViewModulesByTabId({
    required int tabId,
    required int page,
  }) async {
    final response = await _displayApi.getViewModulesByTabId(tabId, page);

    return response.toModel<List<ViewModule>>(
      response.data?.map((viewModuleDto) => viewModuleDto.toModel()).toList() ??
          [],
    );
  }

  @override
  Future<ResponseWrapper<List<Cart>>> getCartList() async {
    final response = await _displayDao.getCartList();

    return response.toModel<List<Cart>>(
      response.data?.map((cartEntity) => cartEntity.toModel()).toList() ?? [],
    );
  }

  @override
  Future<ResponseWrapper<List<Cart>>> addCartList({required Cart cart}) async {
    final response = await _displayDao.insertCart(cart.toEntity());

    return response.toModel<List<Cart>>(
      response.data?.map((cartEntity) => cartEntity.toModel()).toList() ?? [],
    );
  }

  @override
  Future<ResponseWrapper<List<Cart>>> clearCartList() async {
    final response = await _displayDao.clearCarts();

    return response.toModel<List<Cart>>([]);
  }

  @override
  Future<ResponseWrapper<List<Cart>>> deleteCartByPrdId(
    List<String> productIds,
  ) async {
    final response = await _displayDao.deleteCart(productIds);

    return response.toModel<List<Cart>>(
      response.data?.map((cartEntity) => cartEntity.toModel()).toList() ?? [],
    );
  }
}
