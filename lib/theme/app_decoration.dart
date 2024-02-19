import 'package:flutter/material.dart';
import 'package:emad_s_application1/core/app_export.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillBlueGray => BoxDecoration(
        color: appTheme.blueGray100.withOpacity(0.5),
      );
  static BoxDecoration get fillBluegray100 => BoxDecoration(
        color: appTheme.blueGray100.withOpacity(0.3),
      );
  static BoxDecoration get fillGray => BoxDecoration(
        color: appTheme.gray5002,
      );
  static BoxDecoration get fillGray100 => BoxDecoration(
        color: appTheme.gray100,
      );
  static BoxDecoration get fillGrayF => BoxDecoration(
        color: appTheme.gray2007f,
      );
  static BoxDecoration get fillGreenA => BoxDecoration(
        color: appTheme.greenA700,
      );
  static BoxDecoration get fillIndigo => BoxDecoration(
        color: appTheme.indigo70002,
      );
  static BoxDecoration get fillOnPrimary => BoxDecoration(
        color: theme.colorScheme.onPrimary.withOpacity(1),
      );
  static BoxDecoration get fillPrimary => BoxDecoration(
        color: theme.colorScheme.primary,
      );
  static BoxDecoration get fillRed => BoxDecoration(
        color: appTheme.red500,
      );

  // Gradient decorations
  static BoxDecoration get gradientBlueGrayToOnPrimaryContainer =>
      BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.52, 0),
          end: Alignment(0.52, 0.99),
          colors: [
            appTheme.blueGray900,
            theme.colorScheme.onPrimaryContainer,
          ],
        ),
      );
  static BoxDecoration get gradientBlueGrayToPrimary => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0, 0),
          end: Alignment(1, 1),
          colors: [
            appTheme.blueGray900,
            theme.colorScheme.primary,
            theme.colorScheme.primary,
          ],
        ),
      );
  static BoxDecoration get gradientBluegray900ToPrimary => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0, 0),
          end: Alignment(1, 1),
          colors: [
            appTheme.blueGray900,
            theme.colorScheme.primary,
          ],
        ),
      );
  static BoxDecoration get gradientBluegray900ToPrimary1 => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0, 0),
          end: Alignment(1, 1),
          colors: [
            appTheme.blueGray900,
            theme.colorScheme.primary,
          ],
        ),
      );

  // Outline decorations
  static BoxDecoration get outlineBlack => BoxDecoration(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        boxShadow: [
          BoxShadow(
            color: appTheme.black900.withOpacity(0.25),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineBlack900 => BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: appTheme.black900.withOpacity(0.5),
            width: 1.h,
          ),
        ),
      );
  static BoxDecoration get outlineBlack9001 => BoxDecoration(
        color: appTheme.gray100,
        boxShadow: [
          BoxShadow(
            color: appTheme.black900.withOpacity(0.25),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineBlack9002 => BoxDecoration();
  static BoxDecoration get outlineBlack9003 => BoxDecoration(
        border: Border.all(
          color: appTheme.black900.withOpacity(0.5),
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineBlueGray => BoxDecoration(
        color: appTheme.gray100,
        border: Border.all(
          color: appTheme.blueGray10001,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineBluegray100 => BoxDecoration(
        color: appTheme.blueGray50,
        border: Border.all(
          color: appTheme.blueGray100,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineGray => BoxDecoration(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        boxShadow: [
          BoxShadow(
            color: appTheme.gray800.withOpacity(0.15),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              2,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineIndigo => BoxDecoration(
        color: appTheme.gray50,
        border: Border.all(
          color: appTheme.indigo700,
          width: 3.h,
        ),
      );
  static BoxDecoration get outlineIndigo70002 => BoxDecoration(
        border: Border.all(
          color: appTheme.indigo70002,
          width: 2.h,
        ),
      );
  static BoxDecoration get outlinePrimary => BoxDecoration(
        color: appTheme.gray10001,
        border: Border.all(
          color: theme.colorScheme.primary,
          width: 1.h,
        ),
        boxShadow: [
          BoxShadow(
            color: appTheme.black900.withOpacity(0.25),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
      );
}

class BorderRadiusStyle {
  // Circle borders
  static BorderRadius get circleBorder24 => BorderRadius.circular(
        24.h,
      );
  static BorderRadius get circleBorder30 => BorderRadius.circular(
        30.h,
      );
  static BorderRadius get circleBorder6 => BorderRadius.circular(
        6.h,
      );
  static BorderRadius get circleBorder65 => BorderRadius.circular(
        65.h,
      );

  // Custom borders
  static BorderRadius get customBorderBL12 => BorderRadius.vertical(
        bottom: Radius.circular(12.h),
      );
  static BorderRadius get customBorderTL20 => BorderRadius.vertical(
        top: Radius.circular(20.h),
      );

  // Rounded borders
  static BorderRadius get roundedBorder10 => BorderRadius.circular(
        10.h,
      );
  static BorderRadius get roundedBorder16 => BorderRadius.circular(
        16.h,
      );
  static BorderRadius get roundedBorder20 => BorderRadius.circular(
        20.h,
      );
}

// Comment/Uncomment the below code based on your Flutter SDK version.

// For Flutter SDK Version 3.7.2 or greater.

double get strokeAlignInside => BorderSide.strokeAlignInside;

double get strokeAlignCenter => BorderSide.strokeAlignCenter;

double get strokeAlignOutside => BorderSide.strokeAlignOutside;

// For Flutter SDK Version 3.7.1 or less.

// StrokeAlign get strokeAlignInside => StrokeAlign.inside;
//
// StrokeAlign get strokeAlignCenter => StrokeAlign.center;
//
// StrokeAlign get strokeAlignOutside => StrokeAlign.outside;
