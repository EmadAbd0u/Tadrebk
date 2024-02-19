import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A class that offers pre-defined button styles for customizing button appearance.
class CustomButtonStyles {
  // Filled button style
  static ButtonStyle get fillIndigo => ElevatedButton.styleFrom(
        backgroundColor: appTheme.indigo70003,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.h),
        ),
      );

  // Gradient button style
  static BoxDecoration get gradientBlueGrayToPrimaryDecoration => BoxDecoration(
        borderRadius: BorderRadius.circular(30.h),
        boxShadow: [
          BoxShadow(
            color: theme.colorScheme.primary,
            spreadRadius: 3.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              0,
            ),
          ),
        ],
        gradient: LinearGradient(
          begin: Alignment(0.0, 0),
          end: Alignment(0.97, 1),
          colors: [
            appTheme.blueGray900,
            theme.colorScheme.primary,
          ],
        ),
      );
  static BoxDecoration get gradientBlueGrayToPrimaryTL30Decoration =>
      BoxDecoration(
        borderRadius: BorderRadius.circular(30.h),
        boxShadow: [
          BoxShadow(
            color: theme.colorScheme.primary,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              0,
            ),
          ),
        ],
        gradient: LinearGradient(
          begin: Alignment(0.0, 0),
          end: Alignment(1.0, 1),
          colors: [
            appTheme.blueGray900,
            theme.colorScheme.primary,
          ],
        ),
      );

  // Outline button style
  static ButtonStyle get outlinePrimary => ElevatedButton.styleFrom(
        backgroundColor: theme.colorScheme.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.h),
        ),
        shadowColor: theme.colorScheme.primary,
        elevation: 0,
      );
  // text button style
  static ButtonStyle get none => ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
        elevation: MaterialStateProperty.all<double>(0),
      );
}
