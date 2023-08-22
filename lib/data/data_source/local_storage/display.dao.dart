import 'package:hive/hive.dart';

import '../../../domain/model/display/view_module/view_module.model.dart';
import '../../dto/common/response_wrapper/response_wrapper.dart';
import '../../entity/display/cart/cart.entity.dart';
import '../../entity/display/view_module_list/view_module_list.entity.dart';
import '../../mapper/display.mapper.dart';

const String _cartDb = 'CART_DB';

class DisplayDao {
  //뷰 모듈 불러오기
  Future<List<ViewModule>> getViewModules(String key, page) async {
    final localStorage = await Hive.openBox<ViewModuleListEntity>(key);

    final ViewModuleListEntity? result = await localStorage.get(page);
    if (result == null) return [];

    return result.viewModules.map((e) => e.toModel()).toList();
  }

  //뷰 모듈 저장하기
  Future<void> insertViewModules(
    String key,
    int page,
    ViewModuleListEntity viewModules,
  ) async {
    final localStorage = await Hive.openBox<ViewModuleListEntity>(key);
    await localStorage.put(page, viewModules);
  }

  // 뷰모듈 리스트 리프레쉬
  Future<void> clearViewModules(String key) async {
    final localStorage = await Hive.openBox<ViewModuleListEntity>(key);

    await localStorage.clear();
  }

  // 뷰모듈 리스트 삭제
  Future<void> deleteViewModules(String key, int page) async {
    final localStorage = await Hive.openBox<ViewModuleListEntity>(key);

    await localStorage.delete(page);
  }

  /// 장바구니 리스트 불러오기
  Future<ResponseWrapper<List<CartEntity>>> getCartList() async {
    final localStorage = await Hive.openBox<CartEntity>(_cartDb);

    return ResponseWrapper(
      status: 'SUCCESS',
      code: '0000',
      message: '장바구니 리스트 불러오기 성공',
      data: localStorage.values.toList(),
    );
  }

  /// 장바구니 상품 담기
  Future<ResponseWrapper<List<CartEntity>>> insertCart(CartEntity cart) async {
    final localStorage = await Hive.openBox<CartEntity>(_cartDb);
    final productId = cart.product.productId;
    // 이미 장바구니에 존재하는 상품
    if (localStorage.get(productId) != null) {
      final status = '이미 존재하는 상품 ::: ${cart.product.title}';
      final code = 'CART-1000';
      final message = '이미 장바구니에 존재하는 상품 입니다.';

      return ResponseWrapper(
        status: status,
        code: code,
        message: message,
        data: localStorage.values.toList(),
      );
    }
    await localStorage.put(productId, cart);

    return ResponseWrapper(
      status: 'SUCCESS',
      code: '0000',
      message: '장바구니 담기 성공',
      data: localStorage.values.toList(),
    );
  }

  // 장바구니에 담긴 상품 삭제 by productId
  Future<ResponseWrapper<List<CartEntity>>> deleteCart(
    List<String> productIds,
  ) async {
    final localStorage = await Hive.openBox<CartEntity>(_cartDb);
    await localStorage.deleteAll(productIds);

    return ResponseWrapper(
      status: 'SUCCESS',
      code: '0000',
      message: '장바구니 $productIds 해당상품 삭제 성공',
      data: localStorage.values.toList(),
    );
  }

  // 장바구니 전체 삭제
  Future<ResponseWrapper<List<CartEntity>>> clearCarts() async {
    final localStorage = await Hive.openBox<CartEntity>(_cartDb);
    await localStorage.clear();

    return ResponseWrapper(
      status: 'SUCCESS',
      code: '0000',
      message: '장바구니 전체 삭제 성공',
      data: [],
    );
  }

  Future<ResponseWrapper<List<CartEntity>>> changeQtyCart(
    String productId,
    int quantity,
  ) async {
    final localStorage = await Hive.openBox<CartEntity>(_cartDb);
    final curCart = localStorage.get(productId);
    if (curCart == null) {
      final status = '장바구니 인스턴스가 존재하지 않습니다.';
      final code = 'CART-0001';
      final message = '네트워크 오류가 발생했습니다. 잠시 후에 다시 시도해주세요.';

      return ResponseWrapper(
        status: status,
        code: code,
        message: message,
      );
    }

    final nextCart = CartEntity(product: curCart.product, quantity: quantity);
    await localStorage.put(productId, nextCart);

    return ResponseWrapper(
      status: 'SUCCESS',
      code: '0000',
      message: '장바구니 갯수 변경 성공',
      data: localStorage.values.toList(),
    );
  }
}
