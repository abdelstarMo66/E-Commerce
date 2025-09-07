import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shopping/core/helpers/navigation_service.dart';
import 'package:shopping/core/helpers/snack_bar_service.dart';
import 'package:shopping/core/routing/app_router.dart';
import 'package:shopping/core/routing/routes.dart';
import 'package:shopping/core/theme/theme_manager.dart';
import 'package:shopping/core/utils/methods_manager.dart';

class Shopping extends StatelessWidget {
  final AppRouter appRouter;

  const Shopping({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(
      context,
      minTextAdapt: true,
      designSize: const Size(375, 812),
      splitScreenMode: true,
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'shopping',
      theme: ThemeManager.getLightTheme,
      darkTheme: ThemeManager.getDarkTheme,
      themeMode:
          MethodsManager.getBrightness() == Brightness.light
              ? ThemeMode.light
              : ThemeMode.dark,
      navigatorKey: NavigationService.navigatorKey,
      scaffoldMessengerKey: SnackBarService.messengerKey,
      // supportedLocales: context.supportedLocales,
      // localizationsDelegates: context.localizationDelegates,
      // locale: context.locale,
      initialRoute: Routes.login,
      onGenerateRoute: appRouter.generateRoute,
    );
  }
}
