import '../models/userprofile4_item_model.dart';
import 'package:emad_s_application1/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Userprofile4ItemWidget extends StatelessWidget {
  Userprofile4ItemWidget(
    this.userprofile4ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Userprofile4ItemModel userprofile4ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 6.h,
        vertical: 3.v,
      ),
      decoration: AppDecoration.outlineBlack9003.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: SingleChildScrollView(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgEllipse26,
              height: 37.adaptSize,
              width: 37.adaptSize,
              radius: BorderRadius.circular(
                18.h,
              ),
              margin: EdgeInsets.only(
                top: 5.v,
                bottom: 5.v,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 7.h,
                top: 6.v,
                bottom: 13.v,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    userprofile4ItemModelObj.userName!,
                    style: CustomTextStyles.labelMediumBlack900,
                  ),
                  SizedBox(height: 2.v),
                  Text(
                    userprofile4ItemModelObj.requestText!,
                    style: theme.textTheme.bodySmall,
                  ),
                  SizedBox(height: 3.v),
                  Text(
                    userprofile4ItemModelObj.locationText!,
                    style: CustomTextStyles.bodySmallBlack900,
                  ),
                ],
              ),
            ),
            Spacer(),
            Padding(
              padding: EdgeInsets.only(
                top: 4.v,
                right: 9.h,
              ),
              child: Column(
                children: [
                  Container(
                    width: 56.h,
                    padding: EdgeInsets.symmetric(
                      horizontal: 10.h,
                      vertical: 1.v,
                    ),
                    decoration: AppDecoration.fillGreenA.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder10,
                    ),
                    child: Text(
                      userprofile4ItemModelObj.acceptText!,
                      style: CustomTextStyles.labelMediumOnPrimary,
                    ),
                  ),
                  SizedBox(height: 3.v),
                  Container(
                    width: 56.h,
                    padding: EdgeInsets.symmetric(
                      horizontal: 12.h,
                      vertical: 1.v,
                    ),
                    decoration: AppDecoration.fillRed.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder10,
                    ),
                    child: Text(
                      userprofile4ItemModelObj.rejectText!,
                      style: CustomTextStyles.labelMediumOnPrimary,
                    ),
                  ),
                  SizedBox(height: 5.v),
                  Text(
                    userprofile4ItemModelObj.viewProfileText!,
                    style: CustomTextStyles.labelMediumIndigo70002,
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
