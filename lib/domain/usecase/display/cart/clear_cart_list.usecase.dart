import '../../../../core/utils/error/error_response.dart';
import '../../../../core/utils/extensions.dart';
import '../../../model/common/result/result.dart';
import '../../../repository/display.repository.dart';

import '../../base/local.usecase.dart';

class ClearCartListUsecase extends LocalUsecase<DisplayRepository> {
  ClearCartListUsecase();

  @override
  Future call(DisplayRepository repository) async {
    final result = await repository.clearCartList();

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
