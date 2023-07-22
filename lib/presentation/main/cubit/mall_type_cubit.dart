import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/theme/custom/custom_app_bar.dart';
import '../../../core/utils/constant.dart';

class MallTypeCubit extends Cubit<MallType> {
  MallTypeCubit() : super(MallType.market);

  void changeMallType(int index) => emit(MallType.values[index]);
}

extension MallTypeX on MallType {
  String get toName {
    switch (this) {
      case MallType.market:
        return '마켓패캠';
      case MallType.beauty:
        return '뷰티패캠';
    }
  }

  CustomAppBarTheme get theme {
    switch (this) {
      case MallType.market:
        return CustomAppBarTheme.market;
      case MallType.beauty:
        return CustomAppBarTheme.beauty;
    }
  }

  bool get isMarket => this == MallType.market;

  bool get isBeauty => this == MallType.beauty;
}
