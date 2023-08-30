import '../../../../core/utils/error/error_response.dart';
import '../../../../core/utils/extensions.dart';
import '../../../model/common/result/result.dart';
import '../../../repository/display.repository.dart';
import '../../base/remote.usecase.dart';

class ChangeCartQtyUsecase extends RemoteUsecase<DisplayRepository> {
  final String productId;
  final int qty;

  ChangeCartQtyUsecase({required this.productId, required this.qty});

  @override
  Future call(DisplayRepository repository) async {
    final result = await repository.changeCartQuantityByPrdId(
      productId: productId,
      qty: qty,
    );

    return (result.status.isSuccess)
        ? Result.success(result.data)
        : Result.failure(
            ErrorResponse(
              status: result.status,
              code: result.code,
              message: result.message,
            ),
          );
  }
}
