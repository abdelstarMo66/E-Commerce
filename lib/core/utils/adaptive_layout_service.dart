import 'package:flutter/material.dart';
import 'package:shopping/core/utils/enums_manager.dart';
import 'package:shopping/core/utils/methods_manager.dart';

class AdaptiveLayout extends StatelessWidget {
  final Widget mobile;
  final Widget tablet;
  final Widget website;

  const AdaptiveLayout({
    super.key,
    required this.mobile,
    required this.tablet,
    required this.website,
  });

  @override
  Widget build(BuildContext context) {
    switch (MethodsManager.getDeviceType(context)) {
      case DeviceTypeEnum.mobile:
        return mobile;
      case DeviceTypeEnum.tablet:
        return tablet;
      case DeviceTypeEnum.website:
        return website;
    }
  }
}
