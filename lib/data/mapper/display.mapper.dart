import '../../domain/model/display/menu/menu.model.dart';
import '../dto/display/menu/menu.dto.dart';

extension MenuEx on MenuDto {
  Menu toModel() {
    return Menu(
      tabId: tabId ?? 0,
      title: title ?? '',
    );
  }
}
