import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/utils/constant.dart';
import '../../../../../core/utils/error/error_response.dart';
import '../../../../../core/utils/exception/common_exception.dart';
import '../../../../../core/utils/logger.dart';
import '../../../../../domain/model/common/result/result.dart';
import '../../../../../domain/model/display/cart/cart.model.dart';
import '../../../../../domain/model/display/product_info/product_info.model.dart';
import '../../../../../domain/usecase/display/cart/add_cart_list.usecase.dart';
import '../../../../../domain/usecase/display/cart/get_cart_list.usecase.dart';
import '../../../../../domain/usecase/display/display.usecase.dart';

part 'cart_list_event.dart';

part 'cart_list_state.dart';

part 'cart_list_bloc.freezed.dart';

@injectable
class CartListBloc extends Bloc<CartListEvent, CartListState> {
  final DisplayUsecase _displayUsecase;

  CartListBloc(this._displayUsecase) : super(CartListState()) {
    on<CartListInitialized>(_onCartListInitialized);
  }

  Future<void> _onCartListInitialized(_, Emitter<CartListState> emit) async {
    emit(state.copyWith(status: Status.loading));
    try {
      final Result<List<Cart>> response =
          await _displayUsecase.excute(usecase: GetCartListUsecase());
      response.when(
        success: (cartList) {
          emit(state.copyWith(status: Status.success, cartList: cartList));
        },
        failure: (error) {
          emit(state.copyWith(status: Status.error, error: error));
        },
      );
    } catch (error) {
      CustomLogger.logger.e(error);
      emit(state.copyWith(
        status: Status.error,
        error: CommonException.setError(error),
      ));
    }
  }

  Future<void> _onCartListAdded(
    CartListAdded event,
    Emitter<CartListState> emit,
  ) async {
    emit(state.copyWith(status: Status.loading));
    final cart = Cart(quantity: event.quantity, product: event.productInfo);
    final Result<bool> response = await _displayUsecase.excute(
      usecase: AddCartListUsecase(cart: cart),
    );

    response.when(
      success: (_) async {
        final Result<List<Cart>> response =
            await _displayUsecase.excute(usecase: GetCartListUsecase());
      },
      failure: (error) {
        emit(state.copyWith(status: Status.error, error: error));
      },
    );
  }
}
