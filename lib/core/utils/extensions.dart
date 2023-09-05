import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../theme/custom/custom_font_weight.dart';
import '../theme/custom/custom_theme.dart';
import 'constant.dart';

extension StatusX on Status {
  bool get isInitial => this == Status.initial;

  bool get isLoading => this == Status.loading;

  bool get isSuccess => this == Status.success;

  bool get isError => this == Status.error;
}

extension StringEx on String {
  String toSnakeCase() {
    RegExp exp = RegExp(r'(?<=[a-z])[A-Z]');

    return replaceAllMapped(exp, (Match m) => ('_${m.group(0)}')).toLowerCase();
  }

  bool get isSuccess => this == 'SUCCESS';
}

extension IntEx on int {
  String toWon() {
    final priceFormat = NumberFormat('###,###,###,###원');

    return priceFormat.format(this);
  }

  String toReview() {
    return this > 9999 ? '9999+' : toString();
  }
}

extension TextStyleEx on TextStyle {
  TextStyle? titleCopyWith() {
    return copyWith(
      color: CustomTheme.colorScheme.contentPrimary,
    ).regular;
  }

  TextStyle? discountRateCopyWith() {
    return copyWith(
      color: CustomTheme.colorScheme.secondary,
    ).bold;
  }

  TextStyle? priceCopyWith() {
    return copyWith(
      color: CustomTheme.colorScheme.contentPrimary,
    ).bold;
  }

  TextStyle? originalPriceCopyWith() {
    return copyWith(
      color: CustomTheme.colorScheme.contentFourth,
      decoration: TextDecoration.lineThrough,
      decorationColor: CustomTheme.colorScheme.contentFourth,
    ).regular;
  }

  TextStyle? reviewCountCopyWith() {
    return copyWith(
      color: CustomTheme.colorScheme.contentTertiary,
    ).regular;
  }
}
