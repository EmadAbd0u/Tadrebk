import 'package:emad_s_application1/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AppbarTrailingCircleimageOne extends StatelessWidget {
  AppbarTrailingCircleimageOne({
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
    return InkWell(
      borderRadius: BorderRadiusStyle.roundedBorder20,
      onTap: () {
        onTap!.call();
      },
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: CustomImageView(
          imagePath: imagePath,
          height: 56.adaptSize,
          width: 56.adaptSize,
          fit: BoxFit.contain,
          radius: BorderRadius.circular(
            20.h,
          ),
        ),
      ),
    );
  }
}
