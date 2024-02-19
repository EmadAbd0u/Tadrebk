import '../models/userprofilelist_item_model.dart';
import 'package:emad_s_application1/core/app_export.dart';
import 'package:emad_s_application1/widgets/custom_rating_bar.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class UserprofilelistItemWidget extends StatelessWidget {
  UserprofilelistItemWidget(
    this.userprofilelistItemModelObj, {
    Key? key,
    this.onTapUserProfile,
  }) : super(
          key: key,
        );

  UserprofilelistItemModel userprofilelistItemModelObj;

  VoidCallback? onTapUserProfile;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: GestureDetector(
        onTap: () {
          onTapUserProfile!.call();
        },
        child: Container(
          decoration: AppDecoration.outlineBlack9001.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder20,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                height: 139.v,
                width: 328.h,
                child: Stack(
                  alignment: Alignment.topRight,
                  children: [
                    CustomImageView(
                      imagePath: userprofilelistItemModelObj?.constructionImage,
                      height: 139.v,
                      width: 328.h,
                      radius: BorderRadius.vertical(
                        top: Radius.circular(20.h),
                      ),
                      alignment: Alignment.center,
                    ),
                    CustomImageView(
                      imagePath: userprofilelistItemModelObj?.groupImage,
                      height: 25.adaptSize,
                      width: 25.adaptSize,
                      alignment: Alignment.topRight,
                      margin: EdgeInsets.only(
                        top: 14.v,
                        right: 12.h,
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
                          userprofilelistItemModelObj.constructionText!,
                          style: theme.textTheme.titleSmall,
                        ),
                        Text(
                          userprofilelistItemModelObj.locationText!,
                          style: theme.textTheme.labelSmall,
                        ),
                        SizedBox(height: 2.v),
                        SizedBox(
                          width: 152.h,
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
                                  userprofilelistItemModelObj.reviewsText!,
                                  style:
                                      CustomTextStyles.labelMediumBluegray400,
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
                            userprofilelistItemModelObj.priceText!,
                            style: theme.textTheme.labelLarge,
                          ),
                          SizedBox(height: 7.v),
                          Text(
                            userprofilelistItemModelObj.priceValue!,
                            style: CustomTextStyles.titleSmallBluegray900,
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
        ),
      ),
    );
  }
}
