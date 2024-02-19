import '../models/userprofile3_item_model.dart';
import 'package:emad_s_application1/core/app_export.dart';
import 'package:emad_s_application1/widgets/custom_rating_bar.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Userprofile3ItemWidget extends StatelessWidget {
  Userprofile3ItemWidget(
    this.userprofile3ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Userprofile3ItemModel userprofile3ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppDecoration.outlineBlack9001.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: 139.v,
            width: 307.h,
            child: Stack(
              alignment: Alignment.topRight,
              children: [
                CustomImageView(
                  imagePath: userprofile3ItemModelObj?.constructionImage,
                  height: 139.v,
                  width: 307.h,
                  radius: BorderRadius.vertical(
                    top: Radius.circular(20.h),
                  ),
                  alignment: Alignment.center,
                ),
                CustomImageView(
                  imagePath: userprofile3ItemModelObj?.groupImage,
                  height: 25.adaptSize,
                  width: 25.adaptSize,
                  alignment: Alignment.topRight,
                  margin: EdgeInsets.only(
                    top: 14.v,
                    right: 7.h,
                  ),
                ),
              ],
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      userprofile3ItemModelObj.constructionText!,
                      style: theme.textTheme.titleSmall,
                    ),
                    Text(
                      userprofile3ItemModelObj.locationText!,
                      style: theme.textTheme.labelSmall,
                    ),
                    SizedBox(height: 2.v),
                    Container(
                      width: 147.h,
                      margin: EdgeInsets.only(right: 2.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomRatingBar(
                            ignoreGestures: true,
                            initialRating: 0,
                            itemCount: 3,
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 10.v),
                            child: Text(
                              userprofile3ItemModelObj.reviewsText!,
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
                    top: 3.v,
                    bottom: 10.v,
                  ),
                  child: Column(
                    children: [
                      Text(
                        userprofile3ItemModelObj.priceText!,
                        style: theme.textTheme.labelLarge,
                      ),
                      SizedBox(height: 7.v),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                          padding: EdgeInsets.only(right: 8.h),
                          child: Text(
                            userprofile3ItemModelObj.priceValue!,
                            style: CustomTextStyles.titleSmallBluegray900,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 11.v),
        ],
      ),
    );
  }
}
