import '../../core/utils/constant.dart';
import '../../data/dto/common/response_wrapper/response_wrapper.dart';
import '../model/display/cart/cart.model.dart';
import '../model/display/display.model.dart';

import 'repository.dart';

abstract class DisplayRepository extends Repository {
  Future<ResponseWrapper<List<Menu>>> getMenusByMallType({
    required MallType mallType,
  });

  Future<ResponseWrapper<List<ViewModule>>> getViewModulesByTabId({
    required int tabId,
    required int page,
  });

  /// 장바구니 리스트 불러오기
  Future<ResponseWrapper<List<Cart>>> getCartList();

  /// 장바구니 담기
  Future<ResponseWrapper<List<Cart>>> addCartList({required Cart cart});

  /// 장바구니 삭제
  Future<ResponseWrapper<List<Cart>>> deleteCartByPrdId(
      List<String> productIds);

  /// 장바구니 비우기
  Future<ResponseWrapper<List<Cart>>> clearCartList();

  // 장바구니 수량 변경
  Future<ResponseWrapper<List<Cart>>> changeCartQuantityByPrdId({
    required String productId,
    required int qty,
  });
}
