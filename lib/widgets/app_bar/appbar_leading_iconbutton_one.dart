import 'package:emad_s_application1/core/app_export.dart';
import 'package:emad_s_application1/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AppbarLeadingIconbuttonOne extends StatelessWidget {
  AppbarLeadingIconbuttonOne({
    Key? key,
    this.imagePath,
    this.margin,
    this.onTap,
  }) : super(
          key: key,
        );

  String? imagePath;

  EdgeInsetsGeometry? margin;

  Function? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap!.call();
      },
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: CustomIconButton(
          height: 35.adaptSize,
          width: 35.adaptSize,
          child: CustomImageView(
            imagePath: ImageConstant.imgZondiconsAddOutline,
          ),
        ),
      ),
    );
  }
}
