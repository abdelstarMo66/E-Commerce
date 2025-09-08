import 'dart:io';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:shopping/core/services/local/prefs_manager.dart';
import 'package:shopping/core/services/local/shared_preferences.dart';
import 'package:shopping/core/utils/enums_manager.dart';

class MethodsManager {
  static Locale getLocate() {
    String? lang = SharedPreferencesManager.getData(key: PrefsManager.lang);
    late Locale locale;

    if (lang == null) {
      locale = PlatformDispatcher.instance.locale;
    } else {
      locale = Locale(lang);
    }
    return locale;
  }

  static Brightness getBrightness() {
    String? theme = SharedPreferencesManager.getData(key: PrefsManager.theme);
    late Brightness brightness;

    if (theme == null) {
      brightness =
          WidgetsBinding.instance.platformDispatcher.platformBrightness;

    } else {
      brightness =
          ThemeEnum.light.toString() == theme
              ? Brightness.light
              : Brightness.dark;
    }

    return brightness;
  }

  static DeviceTypeEnum getDeviceType(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    if (width < 600) return DeviceTypeEnum.mobile;
    if (width < 1100) return DeviceTypeEnum.tablet;
    return DeviceTypeEnum.website;
  }

  static String getToken() {
    String? storeToken = SharedPreferencesManager.getData(
      key: PrefsManager.token,
    );
    late String token;

    if (storeToken == null) {
      token = 'undefined';
    } else {
      token = storeToken;
    }
    return token;
  }

  static Future<void> storeFCMToken(token) async {
    final String? storedFcmToken = await SharedPreferencesManager.getData(
      key: PrefsManager.fcmToken,
    );

    if (storedFcmToken != null) {
      if (token != storedFcmToken) {
        await SharedPreferencesManager.saveData(
          key: PrefsManager.fcmToken,
          value: token,
        );
      }
    } else {
      await SharedPreferencesManager.saveData(
        key: PrefsManager.fcmToken,
        value: token,
      );
    }
  }

  static String? getNullableToken() {
    String? token = SharedPreferencesManager.getData(key: PrefsManager.token);

    return token;
  }

  static String generateCountryFlag({required String countryCode}) {
    String flag = countryCode.toUpperCase().replaceAllMapped(
      RegExp(r'[A-Z]'),
      (match) => String.fromCharCode(match.group(0)!.codeUnitAt(0) + 127397),
    );

    return flag;
  }
}
