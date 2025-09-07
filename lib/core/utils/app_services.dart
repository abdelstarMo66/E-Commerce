import 'package:flutter/services.dart';
import 'package:shopping/core/theme/color_manager.dart';
import 'package:shopping/core/utils/methods_manager.dart';

class AppServices {
  static void configSystemUIOverlayStyle() {
    final Brightness brightness = MethodsManager.getBrightness();

    if (brightness == Brightness.light) {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarColor: ColorManager.lBGColor,
          statusBarBrightness: Brightness.light,
          statusBarIconBrightness: Brightness.dark,
          systemNavigationBarColor: ColorManager.lBGColor,
          systemNavigationBarDividerColor: ColorManager.lBGColor,
          systemNavigationBarIconBrightness: Brightness.dark,
        ),
      );
    } else {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarColor: ColorManager.dBGColor,
          statusBarBrightness: Brightness.dark,
          statusBarIconBrightness: Brightness.light,
          systemNavigationBarColor: ColorManager.dBGColor,
          systemNavigationBarDividerColor: ColorManager.dBGColor,
          systemNavigationBarIconBrightness: Brightness.light,
        ),
      );
    }
  }
}
