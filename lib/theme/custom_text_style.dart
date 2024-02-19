import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLargeGray500 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray500,
      );
  static get bodyLargeInter => theme.textTheme.bodyLarge!.inter.copyWith(
        fontSize: 16.fSize,
      );
  static get bodyLargeInterGray900 => theme.textTheme.bodyLarge!.inter.copyWith(
        color: appTheme.gray900.withOpacity(0.5),
        fontSize: 16.fSize,
        fontWeight: FontWeight.w300,
      );
  static get bodyLargeInterff000000 =>
      theme.textTheme.bodyLarge!.inter.copyWith(
        color: Color(0XFF000000),
        fontSize: 16.fSize,
      );
  static get bodyLargeKanitGray600cc =>
      theme.textTheme.bodyLarge!.kanit.copyWith(
        color: appTheme.gray600Cc,
        fontSize: 16.fSize,
      );
  static get bodyLargeKanitOnPrimary =>
      theme.textTheme.bodyLarge!.kanit.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        fontSize: 16.fSize,
      );
  static get bodyLargeRoboto => theme.textTheme.bodyLarge!.roboto.copyWith(
        fontSize: 16.fSize,
      );
  static get bodyLargeRobotoBlack900 =>
      theme.textTheme.bodyLarge!.roboto.copyWith(
        color: appTheme.black900.withOpacity(0.5),
        fontSize: 16.fSize,
      );
  static get bodyLargeRobotoBluegray400 =>
      theme.textTheme.bodyLarge!.roboto.copyWith(
        color: appTheme.blueGray400,
        fontSize: 16.fSize,
      );
  static get bodySmall11 => theme.textTheme.bodySmall!.copyWith(
        fontSize: 11.fSize,
      );
  static get bodySmall11_1 => theme.textTheme.bodySmall!.copyWith(
        fontSize: 11.fSize,
      );
  static get bodySmall12 => theme.textTheme.bodySmall!.copyWith(
        fontSize: 12.fSize,
      );
  static get bodySmallBlack900 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.black900.withOpacity(0.66),
        fontSize: 8.fSize,
      );
  static get bodySmallGTWalsheimPro =>
      theme.textTheme.bodySmall!.gTWalsheimPro.copyWith(
        fontSize: 12.fSize,
      );
  static get bodySmallGTWalsheimProff272727 =>
      theme.textTheme.bodySmall!.gTWalsheimPro.copyWith(
        color: Color(0XFF272727),
        fontSize: 12.fSize,
      );
  static get bodySmallOnPrimary => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        fontSize: 12.fSize,
      );
  static get bodySmallRobotoPrimary =>
      theme.textTheme.bodySmall!.roboto.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 12.fSize,
      );
  static get bodySmallRobotoff1b3358 =>
      theme.textTheme.bodySmall!.roboto.copyWith(
        color: Color(0XFF1B3358),
        fontSize: 12.fSize,
      );
  static get bodySmallRumRaisin =>
      theme.textTheme.bodySmall!.rumRaisin.copyWith(
        fontSize: 11.fSize,
      );
  // Headline text style
  static get headlineLargeBakbakOneGreenA700 =>
      theme.textTheme.headlineLarge!.bakbakOne.copyWith(
        color: appTheme.greenA700,
        fontWeight: FontWeight.w400,
      );
  static get headlineLargeGTWalsheimProGray900 =>
      theme.textTheme.headlineLarge!.gTWalsheimPro.copyWith(
        color: appTheme.gray900,
      );
  static get headlineLargeOnPrimary => theme.textTheme.headlineLarge!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        fontWeight: FontWeight.w200,
      );
  static get headlineLargeOnPrimary_1 =>
      theme.textTheme.headlineLarge!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
      );
  // Kanit text style
  static get kanitBlack900 => TextStyle(
        color: appTheme.black900,
        fontSize: 5.fSize,
        fontWeight: FontWeight.w400,
      ).kanit;
  // Label text style
  static get labelLargeGTWalsheimProff272727 =>
      theme.textTheme.labelLarge!.gTWalsheimPro.copyWith(
        color: Color(0XFF272727),
      );
  static get labelLargeGray900 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray900,
        fontSize: 13.fSize,
      );
  static get labelLargeIndigo70002 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.indigo70002,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeIstokWebGray900 =>
      theme.textTheme.labelLarge!.istokWeb.copyWith(
        color: appTheme.gray900,
        fontSize: 13.fSize,
      );
  static get labelLargeRobotoff1b3358 =>
      theme.textTheme.labelLarge!.roboto.copyWith(
        color: Color(0XFF1B3358),
      );
  static get labelLargeSemiBold => theme.textTheme.labelLarge!.copyWith(
        fontSize: 13.fSize,
        fontWeight: FontWeight.w600,
      );
  static get labelMediumBlack900 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w600,
      );
  static get labelMediumBluegray400 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.blueGray400,
      );
  static get labelMediumIndigo70002 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.indigo70002,
      );
  static get labelMediumOnPrimary => theme.textTheme.labelMedium!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
      );
  static get labelMediumOnPrimary_1 => theme.textTheme.labelMedium!.copyWith(
        color: theme.colorScheme.onPrimary,
      );
  static get labelSmallBluegray900 => theme.textTheme.labelSmall!.copyWith(
        color: appTheme.blueGray900,
      );
  // Title text style
  static get titleLargeRubikOnPrimary =>
      theme.textTheme.titleLarge!.rubik.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
      );
  static get titleMedium18 => theme.textTheme.titleMedium!.copyWith(
        fontSize: 18.fSize,
      );
  static get titleMediumBluegray900 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blueGray900,
      );
  static get titleMediumGreenA700 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.greenA700,
      );
  static get titleMediumIndigo90001 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.indigo90001,
      );
  static get titleMediumKanit => theme.textTheme.titleMedium!.kanit.copyWith(
        fontWeight: FontWeight.w500,
      );
  static get titleMediumMedium => theme.textTheme.titleMedium!.copyWith(
        fontSize: 18.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumMedium_1 => theme.textTheme.titleMedium!.copyWith(
        fontWeight: FontWeight.w500,
      );
  static get titleMediumOnPrimary => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        fontSize: 18.fSize,
      );
  static get titleMediumOnPrimarySemiBold =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        fontWeight: FontWeight.w600,
      );
  static get titleMediumOnPrimary_1 => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
      );
  static get titleMediumOnPrimary_2 => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
      );
  static get titleMediumUrbanistGray50001 =>
      theme.textTheme.titleMedium!.urbanist.copyWith(
        color: appTheme.gray50001,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumUrbanistGray9007f =>
      theme.textTheme.titleMedium!.urbanist.copyWith(
        color: appTheme.gray9007f,
      );
  static get titleMedium_1 => theme.textTheme.titleMedium!;
  static get titleMediumff000000 => theme.textTheme.titleMedium!.copyWith(
        color: Color(0XFF000000),
        fontSize: 18.fSize,
      );
  static get titleMediumff1b3358 => theme.textTheme.titleMedium!.copyWith(
        color: Color(0XFF1B3358),
        fontWeight: FontWeight.w500,
      );
  static get titleMediumff20bf55 => theme.textTheme.titleMedium!.copyWith(
        color: Color(0XFF20BF55),
        fontSize: 18.fSize,
      );
  static get titleMediumff3a5793 => theme.textTheme.titleMedium!.copyWith(
        color: Color(0XFF3A5793),
      );
  static get titleSmallBluegray10001 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.blueGray10001,
        fontSize: 14.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallBluegray400 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.blueGray400,
      );
  static get titleSmallBluegray400Medium =>
      theme.textTheme.titleSmall!.copyWith(
        color: appTheme.blueGray400,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallBluegray900 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.blueGray900,
      );
  static get titleSmallRobotoBluegray900 =>
      theme.textTheme.titleSmall!.roboto.copyWith(
        color: appTheme.blueGray900,
        fontWeight: FontWeight.w800,
      );
  static get titleSmallUrbanistGray9007f =>
      theme.textTheme.titleSmall!.urbanist.copyWith(
        color: appTheme.gray9007f,
        fontSize: 14.fSize,
        fontWeight: FontWeight.w500,
      );
}

extension on TextStyle {
  TextStyle get istokWeb {
    return copyWith(
      fontFamily: 'Istok Web',
    );
  }

  TextStyle get kanit {
    return copyWith(
      fontFamily: 'Kanit',
    );
  }

  TextStyle get roboto {
    return copyWith(
      fontFamily: 'Roboto',
    );
  }

  TextStyle get rubik {
    return copyWith(
      fontFamily: 'Rubik',
    );
  }

  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }

  TextStyle get bakbakOne {
    return copyWith(
      fontFamily: 'Bakbak One',
    );
  }

  TextStyle get urbanist {
    return copyWith(
      fontFamily: 'Urbanist',
    );
  }

  TextStyle get poppins {
    return copyWith(
      fontFamily: 'Poppins',
    );
  }

  TextStyle get rumRaisin {
    return copyWith(
      fontFamily: 'Rum Raisin',
    );
  }

  TextStyle get gTWalsheimPro {
    return copyWith(
      fontFamily: 'GT Walsheim Pro',
    );
  }
}
