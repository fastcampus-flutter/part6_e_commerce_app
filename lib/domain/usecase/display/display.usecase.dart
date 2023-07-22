import 'package:injectable/injectable.dart';

import '../../repository/display.repository.dart';
import '../base/remote.usecase.dart';

@singleton
class DisplayUsecase {
  final DisplayRepository _displayRepository;

  DisplayUsecase(this._displayRepository);

  Future excute<T>({required RemoteUsecase usecase}) async {
    return await usecase(_displayRepository);
  }
}
