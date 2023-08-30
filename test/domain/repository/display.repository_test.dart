import 'package:lecture_e_commerce/core/utils/constant.dart';
import 'package:lecture_e_commerce/data/data_source/local_storage/display.dao.dart';
import 'package:lecture_e_commerce/data/data_source/mock/display/display.mock_api.dart';
import 'package:lecture_e_commerce/data/data_source/remote/display/display.api.dart';
import 'package:lecture_e_commerce/data/dto/common/response_wrapper/response_wrapper.dart';
import 'package:lecture_e_commerce/data/dto/display/menu/menu.dto.dart';
import 'package:lecture_e_commerce/data/mapper/common.mapper.dart';
import 'package:lecture_e_commerce/data/mapper/display.mapper.dart';
import 'package:lecture_e_commerce/data/repository_impl/display.repository_impl.dart';
import 'package:lecture_e_commerce/domain/model/display/menu/menu.model.dart';
import 'package:lecture_e_commerce/domain/repository/display.repository.dart';

import 'package:mocktail/mocktail.dart';
import 'package:flutter_test/flutter_test.dart';

class MockDisplayApi extends Mock implements DisplayApi {}

void main() {
  late DisplayRepository displayRepository;
  late DisplayApi displayApi;

  setUpAll(() {
    displayApi = MockDisplayApi();
    displayRepository = DisplayRepositoryImpl(displayApi, DisplayDao());
  });

  test('의존성 주입 및 생성자 테스트', () {
    expect(displayRepository, isNotNull);
  });

  group('메뉴 리스트 불러오기', () {
    // api 호출 테스트
    test('api 호출 테스트', () async {
      try {
        await displayRepository.getMenusByMallType(mallType: MallType.market);
      } catch (error) {}
      verify(() => displayApi.getMenusByMallType(any())).called(1);
    });

    //실패
    test('메뉴 리스트 불러오기 실패', () async {
      final exception = Exception('common_error');
      when(() => displayApi.getMenusByMallType(any())).thenThrow(exception);
      expect(
          () async =>
              displayRepository.getMenusByMallType(mallType: MallType.market),
          throwsA(exception));
    });

    // 성공 (MallType : market)
    test('메뉴 리스트 불러오기 성공 ', () async {
      final mallType = MallType.market;

      final ResponseWrapper<List<MenuDto>> mockingApiData =
          await DisplayMockApi().getMenusByMallType(mallType.name);

      when(() => displayApi.getMenusByMallType(mallType.name))
          .thenAnswer((_) async => mockingApiData);

      final actual =
          await displayRepository.getMenusByMallType(mallType: mallType);

      final expected = mockingApiData.toModel<List<Menu>>(
          mockingApiData.data?.map((e) => e.toModel()).toList() ?? []);
      expect(actual, expected);
    });
  });
}
