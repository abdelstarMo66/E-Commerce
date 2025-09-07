import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopping/core/utils/methods_manager.dart';

class AnimationRoute extends PageRouteBuilder {
  final Widget page;

  AnimationRoute({required this.page})
      : super(
    pageBuilder: (context, animation, animationTwo) {
      Locale locale = MethodsManager.getLocate();

      return Directionality(
        textDirection: locale == const Locale("ar")
            ? TextDirection.rtl
            : TextDirection.ltr,
        child: page,
      );
      // return StreamBuilder<ConnectivityResult>(
      //     stream: getIt<InternetConnectionChecker>().connectionStream,
      //     builder: (context, snapshot) {
      //       if (snapshot.hasData) {
      //         if (snapshot.data == ConnectivityResult.mobile ||
      //             snapshot.data == ConnectivityResult.wifi) {
      //           VariableManager.isConnectNetwork = true;
      //         } else {
      //           VariableManager.isConnectNetwork = false;
      //         }
      //       }
      //
      //       return Directionality(
      //         textDirection: locale == const Locale("ar")
      //             ? TextDirection.rtl
      //             : TextDirection.ltr,
      //         child: page,
      //       );
      //     });
    },
    transitionsBuilder: (context, animation, animationTwo, child) {
      return FadeTransition(
        opacity: animation,
        child: child,
      );
    },
  );
}