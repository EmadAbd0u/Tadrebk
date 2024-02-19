import 'bloc/android_large_twentyone_bloc.dart';
import 'models/android_large_twentyone_model.dart';
import 'package:emad_s_application1/core/app_export.dart';
import 'package:emad_s_application1/widgets/app_bar/appbar_leading_image.dart';
import 'package:emad_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:emad_s_application1/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:emad_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class AndroidLargeTwentyoneScreen extends StatelessWidget {
  const AndroidLargeTwentyoneScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<AndroidLargeTwentyoneBloc>(
      create: (context) => AndroidLargeTwentyoneBloc(AndroidLargeTwentyoneState(
        androidLargeTwentyoneModelObj: AndroidLargeTwentyoneModel(),
      ))
        ..add(AndroidLargeTwentyoneInitialEvent()),
      child: AndroidLargeTwentyoneScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AndroidLargeTwentyoneBloc, AndroidLargeTwentyoneState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
              width: 328.h,
              margin: EdgeInsets.symmetric(horizontal: 16.h),
              padding: EdgeInsets.symmetric(
                horizontal: 8.h,
                vertical: 17.v,
              ),
              decoration: AppDecoration.outlineGray.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder16,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  _buildFrame1(context),
                  SizedBox(height: 14.v),
                  _buildFrame2(context),
                  SizedBox(height: 14.v),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 49.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgGroup142,
        margin: EdgeInsets.only(
          left: 19.h,
          top: 22.v,
          bottom: 242.v,
        ),
      ),
      title: AppbarTitle(
        text: "lbl_my_training".en,
        margin: EdgeInsets.only(
          left: 16.h,
          top: 29.v,
          bottom: 230.v,
        ),
      ),
      actions: [
        AppbarTrailingIconbutton(
          imagePath: ImageConstant.imgArrowDown,
          margin: EdgeInsets.fromLTRB(24.h, 22.v, 24.h, 237.v),
        ),
      ],
      styleType: Style.bgFill,
    );
  }

  /// Section Widget
  Widget _buildFrame1(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 1.h),
      decoration: AppDecoration.fillGrayF,
      child: Column(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle69,
            height: 145.v,
            width: 311.h,
            radius: BorderRadius.circular(
              10.h,
            ),
          ),
          SizedBox(height: 8.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 13.h),
              child: Text(
                "lbl_engineering".en,
                style: theme.textTheme.titleMedium,
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: EdgeInsets.only(right: 7.h),
              child: Text(
                "lbl_50".en,
                style: CustomTextStyles.bodySmallRumRaisin,
              ),
            ),
          ),
          SizedBox(height: 1.v),
          SliderTheme(
            data: SliderThemeData(
              trackShape: RoundedRectSliderTrackShape(),
              activeTrackColor: theme.colorScheme.primary,
              inactiveTrackColor: appTheme.blueGray100.withOpacity(0.5),
              thumbColor: appTheme.blueGray100,
              thumbShape: RoundSliderThumbShape(),
            ),
            child: Slider(
              value: 50.81,
              min: 0.0,
              max: 100.0,
              onChanged: (value) {},
            ),
          ),
          SizedBox(height: 8.v),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFrame2(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 1.h),
      decoration: AppDecoration.fillGrayF,
      child: Column(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle69145x311,
            height: 145.v,
            width: 311.h,
            radius: BorderRadius.circular(
              10.h,
            ),
          ),
          SizedBox(height: 8.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 13.h),
              child: Text(
                "msg_front_end_developer".en,
                style: theme.textTheme.titleMedium,
              ),
            ),
          ),
          SizedBox(height: 1.v),
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: EdgeInsets.only(right: 4.h),
              child: Text(
                "lbl_70".en,
                style: CustomTextStyles.bodySmallRumRaisin,
              ),
            ),
          ),
          SizedBox(height: 8.v),
          SliderTheme(
            data: SliderThemeData(
              trackShape: RoundedRectSliderTrackShape(),
              activeTrackColor: theme.colorScheme.primary,
              inactiveTrackColor: appTheme.blueGray100.withOpacity(0.5),
              thumbColor: appTheme.blueGray100,
              thumbShape: RoundSliderThumbShape(),
            ),
            child: Slider(
              value: 69.81,
              min: 0.0,
              max: 100.0,
              onChanged: (value) {},
            ),
          ),
        ],
      ),
    );
  }
}
