import 'package:emad_s_application1/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  CustomAppBar({
    Key? key,
    this.height,
    this.styleType,
    this.leadingWidth,
    this.leading,
    this.title,
    this.centerTitle,
    this.actions,
  }) : super(
          key: key,
        );

  final double? height;

  final Style? styleType;

  final double? leadingWidth;

  final Widget? leading;

  final Widget? title;

  final bool? centerTitle;

  final List<Widget>? actions;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      toolbarHeight: height ?? 294.v,
      automaticallyImplyLeading: false,
      backgroundColor: Colors.transparent,
      flexibleSpace: _getStyle(),
      leadingWidth: leadingWidth ?? 0,
      leading: leading,
      title: title,
      titleSpacing: 0,
      centerTitle: centerTitle ?? false,
      actions: actions,
    );
  }

  @override
  Size get preferredSize => Size(
        SizeUtils.width,
        height ?? 294.v,
      );
  _getStyle() {
    switch (styleType) {
      case Style.bgGradientnamebluegray900nameprimary:
        return Container(
          height: 81.v,
          width: double.maxFinite,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment(0, 0),
              end: Alignment(1, 1),
              colors: [
                appTheme.blueGray900,
                appTheme.blueGray900,
                theme.colorScheme.primary,
              ],
            ),
          ),
        );
      case Style.bgGradientnamebluegray900nameprimary_1:
        return Container(
          height: 81.v,
          width: double.maxFinite,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment(0, 0),
              end: Alignment(1, 1),
              colors: [
                appTheme.blueGray900,
                theme.colorScheme.primary,
              ],
            ),
          ),
        );
      case Style.bgShadow:
        return Container(
          height: 85.v,
          width: double.maxFinite,
          decoration: BoxDecoration(
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
          ),
        );
      case Style.bgFill:
        return Container(
          height: 294.v,
          width: double.maxFinite,
          decoration: BoxDecoration(
            color: appTheme.indigo70002,
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(12.h),
            ),
          ),
        );
      default:
        return null;
    }
  }
}

enum Style {
  bgGradientnamebluegray900nameprimary,
  bgGradientnamebluegray900nameprimary_1,
  bgShadow,
  bgFill,
}
