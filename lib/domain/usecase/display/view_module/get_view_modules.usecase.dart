import '../../../../core/utils/error/error_response.dart';
import '../../../../core/utils/extensions.dart';
import '../../../model/common/result/result.dart';
import '../../../model/display/display.model.dart';
import '../../../repository/display.repository.dart';
import '../../base/remote.usecase.dart';

class GetViewModulesUsecase extends RemoteUsecase<DisplayRepository> {
  final int tabId;
  final int page;

  GetViewModulesUsecase({required this.tabId, this.page = 1});

  @override
  Future<Result<List<ViewModule>>> call(DisplayRepository repository) async {
    final result =
        await repository.getViewModulesByTabId(tabId: tabId, page: page);

    return (result.status.isSuccess)
        ? Result.success(result.data ?? [])
        : Result.failure(
            ErrorResponse(
              status: result.status,
              code: result.code,
              message: result.message,
            ),
          );
  }
}
