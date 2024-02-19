import 'package:flutter/material.dart';
import '../core/app_export.dart';

class CustomIconButton extends StatelessWidget {
  CustomIconButton({
    Key? key,
    this.alignment,
    this.height,
    this.width,
    this.padding,
    this.decoration,
    this.child,
    this.onTap,
  }) : super(
          key: key,
        );

  final Alignment? alignment;

  final double? height;

  final double? width;

  final EdgeInsetsGeometry? padding;

  final BoxDecoration? decoration;

  final Widget? child;

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: iconButtonWidget,
          )
        : iconButtonWidget;
  }

  Widget get iconButtonWidget => SizedBox(
        height: height ?? 0,
        width: width ?? 0,
        child: IconButton(
          padding: EdgeInsets.zero,
          icon: Container(
            height: height ?? 0,
            width: width ?? 0,
            padding: padding ?? EdgeInsets.zero,
            decoration: decoration ??
                BoxDecoration(
                  color: appTheme.indigo70001,
                  borderRadius: BorderRadius.circular(31.h),
                ),
            child: child,
          ),
          onPressed: onTap,
        ),
      );
}

/// Extension on [CustomIconButton] to facilitate inclusion of all types of border style etc
extension IconButtonStyleHelper on CustomIconButton {
  static BoxDecoration get fillGray => BoxDecoration(
        color: appTheme.gray100,
        borderRadius: BorderRadius.circular(17.h),
      );
  static BoxDecoration get fillIndigoTL10 => BoxDecoration(
        color: appTheme.indigo900,
        borderRadius: BorderRadius.circular(10.h),
      );
  static BoxDecoration get fillBlueGray => BoxDecoration(
        color: appTheme.blueGray100,
        borderRadius: BorderRadius.circular(24.h),
      );
  static BoxDecoration get gradientBlueGrayToPrimary => BoxDecoration(
        borderRadius: BorderRadius.circular(25.h),
        gradient: LinearGradient(
          begin: Alignment(0.0, 0),
          end: Alignment(1.0, 1),
          colors: [
            appTheme.blueGray900,
            theme.colorScheme.primary,
          ],
        ),
      );
  static BoxDecoration get fillGrayTL20 => BoxDecoration(
        color: appTheme.gray100,
        borderRadius: BorderRadius.circular(20.h),
      );
  static BoxDecoration get fillPrimary => BoxDecoration(
        color: theme.colorScheme.primary,
        borderRadius: BorderRadius.circular(5.h),
      );
  static BoxDecoration get fillPrimaryTL16 => BoxDecoration(
        color: theme.colorScheme.primary,
        borderRadius: BorderRadius.circular(16.h),
      );
  static BoxDecoration get fillPrimaryTL10 => BoxDecoration(
        color: theme.colorScheme.primary,
        borderRadius: BorderRadius.circular(10.h),
      );
}
