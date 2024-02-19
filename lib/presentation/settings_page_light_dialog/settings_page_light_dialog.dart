import 'bloc/settings_page_light_bloc.dart';
import 'models/settings_page_light_model.dart';
import 'package:emad_s_application1/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class SettingsPageLightDialog extends StatelessWidget {
  const SettingsPageLightDialog({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<SettingsPageLightBloc>(
      create: (context) => SettingsPageLightBloc(SettingsPageLightState(
        settingsPageLightModelObj: SettingsPageLightModel(),
      ))
        ..add(SettingsPageLightInitialEvent()),
      child: SettingsPageLightDialog(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 328.h,
      padding: EdgeInsets.symmetric(
        horizontal: 13.h,
        vertical: 31.v,
      ),
      decoration: AppDecoration.fillOnPrimary.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 10.h,
          vertical: 9.v,
        ),
        decoration: AppDecoration.fillBluegray100.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder10,
        ),
        child: Row(
          children: [
            SizedBox(
              height: 27.adaptSize,
              width: 27.adaptSize,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgGroup166,
                    height: 27.adaptSize,
                    width: 27.adaptSize,
                    alignment: Alignment.center,
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgGroup166,
                    height: 27.adaptSize,
                    width: 27.adaptSize,
                    alignment: Alignment.center,
                  ),
                ],
              ),
            ),
            Container(
              height: 22.v,
              width: 165.h,
              margin: EdgeInsets.only(
                left: 8.h,
                top: 2.v,
                bottom: 2.v,
              ),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      "msg_credit_or_debit".en,
                      style: theme.textTheme.bodyLarge,
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      "msg_credit_or_debit".en,
                      style: theme.textTheme.bodyLarge,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
