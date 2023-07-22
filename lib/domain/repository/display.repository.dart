import '../../core/utils/constant.dart';
import '../../data/dto/common/response_wrapper/response_wrapper.dart';
import '../model/display/menu/menu.model.dart';
import 'repository.dart';

abstract class DisplayRepository extends Repository {
  Future<ResponseWrapper<List<Menu>>> getMenusByMallType({
    required MallType mallType,
  });
}
