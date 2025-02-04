import 'package:advanced_flutter_project/presentation/resources/styles_manager.dart';
import 'package:flutter/material.dart';

import 'color_manager.dart';
import 'font_manager.dart';

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
      textTheme: TextTheme(
        headlineLarge: Styles.styleSemiBold(
          fontSize: FontSizes.s16,
          color: ColorManager.darkGray,
        ),
        bodyLarge: Styles.styleRegular(
            fontSize: FontSizes.s14, color: ColorManager.darkGray),
      ),
      inputDecorationTheme: InputDecorationTheme(
        contentPadding: EdgeInsets.all(8),
        hintStyle: Styles.styleRegular(
          fontSize: FontSizes.s14,
          color: ColorManager.charcoalGray,
        ),
        labelStyle: Styles.styleRegular(
          fontSize: FontSizes.s14,
          color: ColorManager.charcoalGray,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(
            color: ColorManager.tealBlue.withAlpha(51),
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(
            color: ColorManager.tealBlue.withAlpha(51),
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(
            color: ColorManager.tealBlue,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(
            color: ColorManager.error,
          ),
        ),
      ),
    );
  }
}
