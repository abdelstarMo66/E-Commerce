import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shopping/core/helpers/extensions.dart';
import 'package:shopping/core/theme/color_manager.dart';
import 'package:shopping/core/theme/style_manager.dart';

class ThemeManager {
  static ThemeData getLightTheme = ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: ColorManager.lBGColor,

    appBarTheme: AppBarTheme(
      elevation: 0.0,
      backgroundColor: ColorManager.lBGColor,
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: ColorManager.lBGColor,
        statusBarBrightness: Brightness.light,
        statusBarIconBrightness: Brightness.dark,
        systemNavigationBarColor: ColorManager.lBGColor,
        systemNavigationBarDividerColor: ColorManager.lBGColor,
        systemNavigationBarIconBrightness: Brightness.dark,
      ),
      iconTheme: IconThemeData(color: ColorManager.onyxColor),
    ),

    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: ColorManager.lPrimaryColor,
        elevation: 0.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        fixedSize: Size(double.maxFinite, 45.0.h),
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
      ),
    ),

    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: ColorManager.lightGreyColor.withValues(alpha: 0.2),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12.0),
        borderSide: BorderSide(
          width: 0.0,
          color: ColorManager.lightGreyColor.withValues(alpha: 0.2),
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12.0),
        borderSide: BorderSide(width: 1.0, color: ColorManager.lPrimaryColor),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12.0),
        borderSide: BorderSide(width: 1.0, color: ColorManager.errorColor),
      ),
      hintStyle: TextStyleManager.medium(
        color: ColorManager.darkGreyColor.withValues(alpha: 0.8),
      ),
      suffixIconColor: ColorManager.onyxColor,
    ),

    textTheme: TextTheme(
      titleMedium: TextStyleManager.medium(color: ColorManager.lTextColor),
      labelMedium: TextStyleManager.medium(color: ColorManager.lSecondColor),
      displayMedium: TextStyleManager.medium(color: ColorManager.jetBlackColor),
      headlineLarge: TextStyleManager.bold(
        color: ColorManager.lTextColor,
        fontSize: 32.0,
      ),
      labelSmall: TextStyleManager.regular(color: ColorManager.onyxColor),
    ),

    extensions: [
      AppDecorations(
        cardDecoration: BoxDecoration(
          color: ColorManager.whiteColor.withValues(alpha: 0.9),
          borderRadius: BorderRadius.circular(32.0),
          border: Border.all(color: ColorManager.lSecondColor, width: 2.5),
        ),
      ),
    ],
  );

  static ThemeData getDarkTheme = ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: ColorManager.dBGColor,

    appBarTheme: AppBarTheme(
      elevation: 0.0,
      backgroundColor: ColorManager.dBGColor,
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: ColorManager.dBGColor,
        statusBarBrightness: Brightness.dark,
        statusBarIconBrightness: Brightness.light,
        systemNavigationBarColor: ColorManager.dBGColor,
        systemNavigationBarDividerColor: ColorManager.dBGColor,
        systemNavigationBarIconBrightness: Brightness.light,
      ),
      iconTheme: IconThemeData(color: ColorManager.offWhiteColor),
    ),

    bottomSheetTheme: BottomSheetThemeData(
      elevation: 0.0,
      backgroundColor: ColorManager.dBGColor,
    ),

    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: ColorManager.dPrimaryColor,
        elevation: 0.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        fixedSize: Size(double.maxFinite, 45.0.h),
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
      ),
    ),

    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: ColorManager.darkGreyColor.withValues(alpha: 0.2),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12.0),
        borderSide: BorderSide(
          width: 0.0,
          color: ColorManager.darkGreyColor.withValues(alpha: 0.2),
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12.0),
        borderSide: BorderSide(width: 1.0, color: ColorManager.dPrimaryColor),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12.0),
        borderSide: BorderSide(width: 1.0, color: ColorManager.errorColor),
      ),
      hintStyle: TextStyleManager.medium(
        color: ColorManager.moreLightGreyColor,
      ),
      suffixIconColor: ColorManager.offWhiteColor,
    ),

    textTheme: TextTheme(
      titleMedium: TextStyleManager.medium(color: ColorManager.dTextColor),
      labelMedium: TextStyleManager.medium(color: ColorManager.dSecondColor),
      displayMedium: TextStyleManager.medium(color: ColorManager.offWhiteColor),
      headlineLarge: TextStyleManager.bold(
        color: ColorManager.dTextColor,
        fontSize: 32.0,
      ),
      labelSmall: TextStyleManager.regular(color: ColorManager.offWhiteColor),
    ),

      extensions: [
        AppDecorations(
          cardDecoration: BoxDecoration(
            color: ColorManager.greyColor.withValues(alpha: 0.2),
            borderRadius: BorderRadius.circular(32.0),
            border: Border.all(color: ColorManager.dThirdColor, width: 2.5),
          ),
        ),
      ],
  );
}
