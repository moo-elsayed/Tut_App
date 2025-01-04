import 'package:advanced_flutter_project/presentation/color_manager.dart';
import 'package:flutter/material.dart';

class ThemeManager {
  static ThemeData getAppTheme() {
    return ThemeData(
      primaryColor: ColorManager.primary,
      primaryColorLight: ColorManager.primaryLight,
      primaryColorDark: ColorManager.primaryDark,
      disabledColor: ColorManager.disabled,
      splashColor: ColorManager.splash,
      shadowColor: ColorManager.shadow,
      cardTheme: CardTheme(
        color: ColorManager.white,
        shadowColor: ColorManager.neutralGray,
        elevation: 4,
      ),
      appBarTheme: AppBarTheme(
        color: ColorManager.primary,
        centerTitle: true,
        elevation: 4,
      ),
      buttonTheme: ButtonThemeData(
        buttonColor: ColorManager.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: ColorManager.primary,
          foregroundColor: ColorManager.white,
        ),
      ),
    );
  }
}
