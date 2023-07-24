import '../../domain/model/display/display.model.dart';
import '../../domain/model/display/product_info/product_info.model.dart';
import '../dto/display/display.dto.dart';
import '../dto/display/product_info/product_info.dto.dart';

extension MenuEx on MenuDto {
  Menu toModel() {
    return Menu(
      tabId: tabId ?? 0,
      title: title ?? '',
    );
  }
}

extension ViewModuleDtoEx on ViewModuleDto {
  ViewModule toModel() {
    return ViewModule(
      type: type ?? '',
      title: title ?? '',
      subtitle: subtitle ?? '',
      imageUrl: imageUrl ?? '',
      time: time ?? -1,
      products: products?.map((dto) => dto.toModel()).toList() ?? [],
      tabs: tabs ?? [],
    );
  }
}

extension ProductInfoDtoEx on ProductInfoDto {
  ProductInfo toModel() {
    return ProductInfo(
      productId: productId ?? '',
      title: title ?? '',
      subtitle: subtitle ?? '',
      imageUrl: imageUrl ?? '',
      price: price ?? -1,
      originalPrice: originalPrice ?? -1,
      discrountRate: discountRate ?? -1,
      reviewCount: reviewCount ?? -1,
    );
  }
}
