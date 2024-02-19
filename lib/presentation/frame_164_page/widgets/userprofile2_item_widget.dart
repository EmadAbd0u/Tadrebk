import '../models/userprofile2_item_model.dart';
import 'package:emad_s_application1/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Userprofile2ItemWidget extends StatelessWidget {
  Userprofile2ItemWidget(
    this.userprofile2ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Userprofile2ItemModel userprofile2ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 0,
      margin: EdgeInsets.all(0),
      color: appTheme.gray10001,
      shape: RoundedRectangleBorder(
        side: BorderSide(
          color: theme.colorScheme.primary,
          width: 1.h,
        ),
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Container(
        height: 87.v,
        width: 315.h,
        padding: EdgeInsets.symmetric(
          horizontal: 8.h,
          vertical: 5.v,
        ),
        decoration: AppDecoration.outlinePrimary.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder10,
        ),
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgEllipse17,
              height: 48.v,
              width: 46.h,
              radius: BorderRadius.circular(
                24.h,
              ),
              alignment: Alignment.topLeft,
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.only(
                  left: 17.h,
                  right: 9.h,
                  bottom: 12.v,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 37.h),
                      child: Text(
                        userprofile2ItemModelObj.companyName!,
                        style: theme.textTheme.labelLarge,
                      ),
                    ),
                    SizedBox(height: 13.v),
                    Text(
                      userprofile2ItemModelObj.acceptanceMessage!,
                      style: CustomTextStyles.bodySmall11,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
