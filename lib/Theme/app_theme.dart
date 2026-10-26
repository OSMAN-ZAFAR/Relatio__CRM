import 'package:flutter/material.dart';
import 'colors.dart';
class AppTheme {
  AppTheme._();

  static ThemeData get light {
    return ThemeData(
      useMaterial3: true,
      scaffoldBackgroundColor: AppColor.background,
      colorScheme: ColorScheme.fromSeed(
        seedColor: AppColor.navy,
      ).copyWith(
        primary: AppColor.navy,
        secondary: AppColor.gold,
      ),
    );
  }
}