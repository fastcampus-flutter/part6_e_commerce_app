import 'package:hive_flutter/hive_flutter.dart';

import '../product_info/product_info.entity.dart';

part 'cart.entity.g.dart';

@HiveType(typeId: 1)
class CartEntity extends HiveObject {
  @HiveField(0)
  ProductInfoEntity product;

  @HiveField(1, defaultValue: 1)
  int quantity;

  CartEntity({required this.product, required this.quantity});
}
