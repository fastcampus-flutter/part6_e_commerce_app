import 'package:flutter/cupertino.dart';

class Constants {
  static const String targetApiKey = 'TARGET';

  static EdgeInsets get horizontalPadding =>
      const EdgeInsets.symmetric(horizontal: 16);
}

enum MallType { market, beauty }

enum Status { initial, loading, success, error }
