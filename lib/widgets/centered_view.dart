import 'package:flutter/material.dart';

import 'package:responsive_builder/responsive_builder.dart';

class CenteredView extends StatelessWidget {
  final Widget child;

  CenteredView({this.child});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (ctx, sizingInfo) => Container(
        padding: EdgeInsets.symmetric(
          horizontal: sizingInfo.isMobile ? 30 : 70,
          vertical: sizingInfo.isMobile ? 70 : 200,
        ),
        alignment: Alignment.center,
        child: ConstrainedBox(
          constraints: BoxConstraints(
            maxWidth: 1200,
            minHeight: 400,
          ),
          child: child,
        ),
      ),
    );
  }
}
