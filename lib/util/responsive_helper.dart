import 'package:flutter/material.dart';

class ResponsiveWidgets extends StatelessWidget {
  final Widget mobile;
  final Widget? tablet;
  final Widget? desktop;
  const ResponsiveWidgets(
      {super.key,
       this.tablet,
       this.desktop,
      required this.mobile});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constrains) {
        final checkIfDeviceIsMobile =
            constrains.maxWidth >= 320 || constrains.maxWidth <= 480;
        final checkIfDeviceIsTablet =
            constrains.maxWidth >= 481 || constrains.maxWidth <= 768;

        if (checkIfDeviceIsMobile) {
          return mobile;
        } else if (checkIfDeviceIsTablet) {
          return tablet!;
        } else {
          return desktop!;
        }
      },
    );
  }
}
