import 'package:injectable/injectable.dart';

import '../../core/utils/constant.dart';
import '../../domain/model/common/result/result.dart';
import '../../domain/model/display/cart/cart.model.dart';
import '../../domain/model/display/menu/menu.model.dart';
import '../../domain/model/display/view_module/view_module.model.dart';
import '../../domain/repository/display.repository.dart';
import '../data_source/local_storage/display.dao.dart';
import '../data_source/remote/display/display.api.dart';
import '../dto/common/response_wrapper/response_wrapper.dart';
import '../entity/display/view_module_list/view_module_list.entity.dart';
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
    required bool isRefresh,
  }) async {
    final cacheKey = '$tabId';

    if (isRefresh) {
      await _displayDao.clearViewModules(cacheKey);
    }

    final List<ViewModule> cachedViewModules =
        await _displayDao.getViewModules(cacheKey, page);

    if (cachedViewModules.isNotEmpty) {
      return ResponseWrapper(status: 'SUCCESS', data: cachedViewModules);
    }

    final response = await _displayApi.getViewModulesByTabId(tabId, page);
    final viewModules = response.data?.map((e) => e.toModel()).toList() ?? [];

    await _displayDao.insertViewModules(
      cacheKey,
      page,
      ViewModuleListEntity(
        viewModules: viewModules.map((e) => e.toEntity()).toList(),
      ),
    );

    return response.toModel<List<ViewModule>>(viewModules);
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

  @override
  Future<ResponseWrapper<List<Cart>>> changeCartQuantityByPrdId({
    required String productId,
    required int qty,
  }) async {
    final response = await _displayDao.changeQtyCart(productId, qty);

    return response.toModel<List<Cart>>(
      response.data?.map((cartEntity) => cartEntity.toModel()).toList() ?? [],
    );
  }
}
