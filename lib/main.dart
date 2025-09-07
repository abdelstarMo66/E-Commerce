import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shopping/app/app.dart';
import 'package:shopping/core/routing/app_router.dart';
import 'package:shopping/core/services/local/prefs_manager.dart';
import 'package:shopping/core/services/local/shared_preferences.dart';
import 'package:shopping/core/utils/app_services.dart';
import 'package:shopping/core/utils/methods_manager.dart';

Future<void> main() async {
  await runZonedGuarded(
    () async {
      WidgetsFlutterBinding.ensureInitialized();
      // Bloc.observer = MyBlocObserver();

      // await Firebase.initializeApp(
      //   options: DefaultFirebaseOptions.currentPlatform,
      // );
      // await NotificationService.instance.initialize();
      // await EasyLocalization.ensureInitialized();
      await SharedPreferencesManager.init();
      await ScreenUtil.ensureScreenSize();
      // await setupGetIt();

      await SharedPreferencesManager.removeData(key: PrefsManager.theme);
      print(MethodsManager.getBrightness());

      AppServices.configSystemUIOverlayStyle();
      SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

      // Locale locale = MethodsManager.getLocate();

      AppRouter appRouter = AppRouter();

      runApp(Shopping(appRouter: appRouter));
    },
    (error, stackTrace) async {
      debugPrint("Global Error: $error");
      debugPrint("Global StackTrace: $stackTrace");
    },
  );
}
