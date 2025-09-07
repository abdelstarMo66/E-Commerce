import 'package:flutter/material.dart';

enum DeviceType { mobile, tablet, website }
// enum DeviceType { mobile, tablet }

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

  static DeviceType getDeviceType(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    if (width < 600) return DeviceType.mobile;
    if (width < 1100) return DeviceType.tablet;
    return DeviceType.website;
    // if (width < 600) return DeviceType.mobile;
    // return DeviceType.tablet;
  }

  @override
  Widget build(BuildContext context) {
    switch (getDeviceType(context)) {
      case DeviceType.mobile:
        return mobile;
      case DeviceType.tablet:
        return tablet;
      case DeviceType.website:
        return website;
    }
  }
}
