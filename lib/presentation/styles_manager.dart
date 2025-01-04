import 'package:advanced_flutter_project/presentation/font_manager.dart';
import 'package:flutter/material.dart';

abstract class Styles {
  static TextStyle styleLight(
      {required double fontSize, required Color color}) {
    return TextStyle(
      color: color,
      fontSize: fontSize,
      fontWeight: FontWeightManager.light,
    );
  }

  static TextStyle styleRegular({
    required double fontSize,
    required Color color,
  }) {
    return TextStyle(
      color: color,
      fontSize: fontSize,
      fontWeight: FontWeightManager.regular,
    );
  }

  static TextStyle styleMedium({
    required double fontSize,
    required Color color,
  }) {
    return TextStyle(
      color: color,
      fontSize: fontSize,
      fontWeight: FontWeightManager.medium,
    );
  }

  static TextStyle styleSemiBold({
    required double fontSize,
    required Color color,
  }) {
    return TextStyle(
      color: color,
      fontSize: fontSize,
      fontWeight: FontWeightManager.semiBold,
    );
  }

  static TextStyle styleBold({
    required double fontSize,
    required Color color,
  }) {
    return TextStyle(
      color: color,
      fontSize: fontSize,
      fontWeight: FontWeightManager.bold,
    );
  }
}
