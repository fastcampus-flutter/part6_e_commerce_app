import 'package:flutter_test/flutter_test.dart';
import 'package:lecture_e_commerce/core/utils/constant.dart';
import 'package:lecture_e_commerce/core/utils/error/error_response.dart';
import 'package:lecture_e_commerce/data/data_source/local_storage/display.dao.dart';
import 'package:lecture_e_commerce/data/data_source/remote/display/display.api.dart';
import 'package:lecture_e_commerce/data/repository_impl/display.repository_impl.dart';
import 'package:lecture_e_commerce/domain/model/common/result/result.dart';
import 'package:lecture_e_commerce/domain/model/display/menu/menu.model.dart';
import 'package:lecture_e_commerce/domain/repository/display.repository.dart';
import 'package:lecture_e_commerce/domain/usecase/display/display.usecase.dart';
import 'package:lecture_e_commerce/domain/usecase/display/menu/get_menus.usecase.dart';
import 'package:mocktail/mocktail.dart';

class MockDisplayRepository extends Mock implements DisplayRepository {}

class MockGetMenusUsecase extends Mock implements GetMenusUsecase {}

class MockDisplayApi extends Mock implements DisplayApi {}

void main() {
  group('display_usecase', () {
    late DisplayRepository displayRepository;
    late DisplayUsecase displayUsecase;

    setUp(() {
      displayRepository = DisplayRepositoryImpl(MockDisplayApi(), DisplayDao());
      displayUsecase = DisplayUsecase(displayRepository);
    });

    test('의존성이 정상적으로 주입되었다.', () => expect(displayUsecase, isNotNull));

    test('메뉴리스트 성공', () async {
      final result = Result.success([Menu(tabId: -1, title: '패캠추천')]);
      final usecase = MockGetMenusUsecase();

      when(() => usecase.mallType).thenReturn(MallType.market);
      when(() => usecase.call(displayRepository))
          .thenAnswer((_) async => result);

      final actual = await displayUsecase.excute(usecase: usecase);
      expect(actual, result);
    });

    test('메뉴리스트 실패', () async {
      final result =
          Result<List<Menu>>.failure(ErrorResponse(status: 'base_error'));
      final usecase = MockGetMenusUsecase();

      when(() => usecase.mallType).thenReturn(MallType.market);
      when(() => usecase.call(displayRepository))
          .thenAnswer((_) async => result);

      final actual = await displayUsecase.excute(usecase: usecase);
      expect(actual, result);
    });
  });
}
