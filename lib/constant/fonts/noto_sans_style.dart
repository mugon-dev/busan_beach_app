import 'package:flutter/material.dart';

class NotoSansStyle extends TextStyle {
  const NotoSansStyle({
    required String fontFamily,
    required Color color,
    required double fontSize,
    required FontWeight fontWeight,
    required int height,
    Paint? foreground,
  }) : super(
          fontFamily: fontFamily,
          color: color,
          fontSize: fontSize,
          fontWeight: fontWeight,
          height: height == null ? null : height / fontSize,
          leadingDistribution: TextLeadingDistribution.even,
          foreground: foreground,
        );
}
