import 'package:emad_s_application1/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AppbarSubtitleOne extends StatelessWidget {
  AppbarSubtitleOne({
    Key? key,
    required this.text,
    this.margin,
    this.onTap,
  }) : super(
          key: key,
        );

  String text;

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
        child: Text(
          text,
          style: CustomTextStyles.titleMediumOnPrimary_1.copyWith(
            color: theme.colorScheme.onPrimary.withOpacity(1),
          ),
        ),
      ),
    );
  }
}
