import 'package:flutter/material.dart';

class CustomFontWeight {
  static const FontWeight regular = FontWeight.w400;
  static const FontWeight semiBold = FontWeight.w600;
  static const FontWeight bold = FontWeight.w700;
}

extension TextStyleX on TextStyle? {
  TextStyle? get regular =>
      this?.copyWith(fontWeight: CustomFontWeight.regular);

  TextStyle? get semiBold =>
      this?.copyWith(fontWeight: CustomFontWeight.semiBold);

  TextStyle? get bold => this?.copyWith(fontWeight: CustomFontWeight.bold);
}
