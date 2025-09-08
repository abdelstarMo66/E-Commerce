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
  static TextStyle regular({double? fontSize, required Color color}) =>
      _getTextStyle(
        fontSize: fontSize ?? FontSize.s14,
        fontWeight: FontWeightManager.regular,
        color: color,
      );

  static TextStyle medium({double? fontSize, required Color color}) =>
      _getTextStyle(
        fontSize: fontSize ?? FontSize.s16,
        fontWeight: FontWeightManager.medium,
        color: color,
      );

  static TextStyle semiBold({double? fontSize, required Color color}) =>
      _getTextStyle(
        fontSize: fontSize ?? FontSize.s18,
        fontWeight: FontWeightManager.semiBold,
        color: color,
      );

  static TextStyle bold({double? fontSize, required Color color}) =>
      _getTextStyle(
        fontSize: fontSize ?? FontSize.s24,
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
    fontSize: FontSize.s38,
    fontWeight: FontWeightManager.bold,
    color:
        brightness == Brightness.light
            ? ColorManager.lPrimaryColor
            : ColorManager.dPrimaryColor,
  );

  static TextStyle bodySplashScreen = GoogleFonts.permanentMarker(
    fontSize: FontSize.s22,
    fontWeight: FontWeightManager.medium,
    color:
        brightness == Brightness.light
            ? ColorManager.lPrimaryColor
            : ColorManager.dThirdColor,
  );

  static TextStyle textStylePinCode = _getTextStyle(
    fontSize: FontSize.s24,
    fontWeight: FontWeightManager.medium,
    color:
        brightness == Brightness.light
            ? ColorManager.onyxColor
            : ColorManager.offWhiteColor,
  );
}
