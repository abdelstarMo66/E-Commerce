import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopping/core/theme/color_manager.dart';
import 'package:shopping/core/utils/methods_manager.dart';

import 'font_manager.dart';

TextStyle _getTextStyle({
  required double fontSize,
  required FontWeight fontWeight,
  required Color color,
}) {
  return TextStyle(
    fontSize: fontSize,
    fontWeight: fontWeight,
    fontFamily: FontConstants.fontFamily,
    color: color,
  );
}

class TextStyleManager {
  static TextStyle regular({
    double fontSize = FontSize.s14,
    required Color color,
  }) => _getTextStyle(
    fontSize: fontSize,
    fontWeight: FontWeightManager.regular,
    color: color,
  );

  static TextStyle medium({
    double fontSize = FontSize.s16,
    required Color color,
  }) => _getTextStyle(
    fontSize: fontSize,
    fontWeight: FontWeightManager.medium,
    color: color,
  );

  static TextStyle semiBold({
    double fontSize = FontSize.s18,
    required Color color,
  }) => _getTextStyle(
    fontSize: fontSize,
    fontWeight: FontWeightManager.semiBold,
    color: color,
  );

  static TextStyle bold({
    double fontSize = FontSize.s24,
    required Color color,
  }) => _getTextStyle(
    fontSize: fontSize,
    fontWeight: FontWeightManager.bold,
    color: color,
  );

  static TextStyle custom({
    required double fontSize,
    required Color color,
    required FontWeight fontWeight,
  }) => _getTextStyle(fontSize: fontSize, fontWeight: fontWeight, color: color);
}

class CustomTextStyleManager {
  static Brightness brightness = MethodsManager.getBrightness();

  static TextStyle headerSplashScreen = GoogleFonts.permanentMarker(
    fontSize: 38.0,
    fontWeight: FontWeightManager.bold,
    color:
        brightness == Brightness.light
            ? ColorManager.lPrimaryColor
            : ColorManager.dPrimaryColor,
  );

  static TextStyle bodySplashScreen = GoogleFonts.permanentMarker(
    fontSize: 22.0,
    fontWeight: FontWeightManager.medium,
    color:
        brightness == Brightness.light
            ? ColorManager.lPrimaryColor
            : ColorManager.dThirdColor,
  );
}
