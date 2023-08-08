import 'package:hive/hive.dart';

import '../../dto/common/response_wrapper/response_wrapper.dart';
import '../../entity/display/cart/cart.entity.dart';

const String _cartDb = 'CART_DB';

class DisplayDao {
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
}
