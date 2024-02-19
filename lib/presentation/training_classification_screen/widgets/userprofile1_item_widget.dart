import '../models/userprofile1_item_model.dart';
import 'package:emad_s_application1/core/app_export.dart';
import 'package:emad_s_application1/widgets/custom_rating_bar.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Userprofile1ItemWidget extends StatelessWidget {
  Userprofile1ItemWidget(
    this.userprofile1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Userprofile1ItemModel userprofile1ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppDecoration.outlineBlack9001.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle23139x307,
            height: 139.v,
            width: 307.h,
            radius: BorderRadius.vertical(
              top: Radius.circular(20.h),
            ),
          ),
          SizedBox(height: 6.v),
          Padding(
            padding: EdgeInsets.only(
              left: 15.h,
              right: 6.h,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  userprofile1ItemModelObj.companyName!,
                  style: theme.textTheme.titleSmall,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 3.v),
                  child: Text(
                    userprofile1ItemModelObj.trainingText!,
                    style: theme.textTheme.labelLarge,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 11.v),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 14.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      userprofile1ItemModelObj.locationText!,
                      style: theme.textTheme.labelSmall,
                    ),
                    SizedBox(height: 2.v),
                    SizedBox(
                      width: 147.h,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomRatingBar(
                            ignoreGestures: true,
                            initialRating: 0,
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 10.v),
                            child: Text(
                              userprofile1ItemModelObj.reviewsText!,
                              style: CustomTextStyles.labelMediumBluegray400,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 6.v,
                    bottom: 10.v,
                  ),
                  child: Text(
                    userprofile1ItemModelObj.priceText!,
                    style: CustomTextStyles.titleSmallBluegray900,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
