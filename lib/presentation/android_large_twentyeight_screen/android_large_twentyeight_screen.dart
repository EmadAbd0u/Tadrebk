import 'bloc/android_large_twentyeight_bloc.dart';
import 'models/android_large_twentyeight_model.dart';
import 'package:emad_s_application1/core/app_export.dart';
import 'package:emad_s_application1/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:emad_s_application1/widgets/app_bar/appbar_subtitle_three.dart';
import 'package:emad_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:emad_s_application1/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class AndroidLargeTwentyeightScreen extends StatelessWidget {
  const AndroidLargeTwentyeightScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<AndroidLargeTwentyeightBloc>(
        create: (context) => AndroidLargeTwentyeightBloc(
            AndroidLargeTwentyeightState(
                androidLargeTwentyeightModelObj:
                    AndroidLargeTwentyeightModel()))
          ..add(AndroidLargeTwentyeightInitialEvent()),
        child: AndroidLargeTwentyeightScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AndroidLargeTwentyeightBloc,
        AndroidLargeTwentyeightState>(builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              body: SizedBox(
                  width: double.maxFinite,
                  child: Column(children: [
                    _buildArrowDownSection(context),
                    Container(
                        padding: EdgeInsets.symmetric(vertical: 2.v),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                  padding: EdgeInsets.only(left: 33.h),
                                  child: Row(children: [
                                    Padding(
                                        padding: EdgeInsets.only(top: 3.v),
                                        child: Text("lbl_change_photo".en,
                                            style: theme.textTheme.titleSmall)),
                                    Padding(
                                        padding: EdgeInsets.only(left: 7.h),
                                        child: CustomIconButton(
                                            height: 21.adaptSize,
                                            width: 21.adaptSize,
                                            padding: EdgeInsets.all(4.h),
                                            decoration: IconButtonStyleHelper
                                                .fillIndigoTL10,
                                            child: CustomImageView(
                                                imagePath:
                                                    ImageConstant.imgGroup84)))
                                  ])),
                              SizedBox(height: 27.v),
                              _buildChangePhotoSection(context,
                                  cityText: "lbl_cairo".en,
                                  addressText: "msg_shobra_el_khema".en,
                                  specializationText: "lbl_address".en,
                                  editText: "lbl_edit".en),
                              SizedBox(height: 12.v),
                              _buildChangePhotoSection(context,
                                  cityText: "lbl_cairo".en,
                                  addressText: "msg_shobra_el_khema".en,
                                  specializationText: "lbl_specialization".en,
                                  editText: "lbl_edit".en),
                              SizedBox(height: 5.v)
                            ]))
                  ]))));
    });
  }

  /// Section Widget
  Widget _buildArrowDownSection(BuildContext context) {
    return SizedBox(
        height: 224.v,
        width: double.maxFinite,
        child: Stack(alignment: Alignment.bottomLeft, children: [
          Align(
              alignment: Alignment.topCenter,
              child: Container(
                  padding: EdgeInsets.symmetric(vertical: 17.v),
                  decoration:
                      AppDecoration.gradientBlueGrayToOnPrimaryContainer,
                  child: Column(mainAxisSize: MainAxisSize.min, children: [
                    SizedBox(height: 13.v),
                    CustomAppBar(
                        height: 35.v,
                        leadingWidth: 51.h,
                        leading: AppbarLeadingIconbutton(
                            imagePath: ImageConstant.imgArrowDown,
                            margin: EdgeInsets.only(left: 16.h),
                            onTap: () {
                              onTapArrowDown(context);
                            }),
                        title: AppbarSubtitleThree(
                            text: "lbl_profile".en,
                            margin: EdgeInsets.only(left: 14.h))),
                    SizedBox(height: 58.v),
                    Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                            padding: EdgeInsets.only(right: 70.h),
                            child: Text("lbl_el_bank_al_ahly".en,
                                style:
                                    CustomTextStyles.bodyLargeKanitOnPrimary)))
                  ]))),
          CustomImageView(
              imagePath: ImageConstant.imgEllipse5,
              height: 130.adaptSize,
              width: 130.adaptSize,
              radius: BorderRadius.circular(65.h),
              alignment: Alignment.bottomLeft,
              margin: EdgeInsets.only(left: 24.h))
        ]));
  }

  /// Common widget
  Widget _buildChangePhotoSection(
    BuildContext context, {
    required String cityText,
    required String addressText,
    required String specializationText,
    required String editText,
  }) {
    return SizedBox(
        height: 74.v,
        width: double.maxFinite,
        child: Stack(alignment: Alignment.topCenter, children: [
          Align(
              alignment: Alignment.center,
              child: Container(
                  width: double.maxFinite,
                  padding: EdgeInsets.fromLTRB(16.h, 3.v, 16.h, 2.v),
                  decoration: AppDecoration.outlineBlack900,
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Padding(
                            padding: EdgeInsets.only(top: 20.v),
                            child: CustomIconButton(
                                height: 48.v,
                                width: 47.h,
                                padding: EdgeInsets.all(12.h),
                                decoration: IconButtonStyleHelper.fillBlueGray,
                                child: CustomImageView(
                                    imagePath:
                                        ImageConstant.imgOcticonLocation16))),
                        Padding(
                            padding: EdgeInsets.only(
                                left: 9.h, top: 31.v, bottom: 7.v),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(cityText,
                                      style: theme.textTheme.labelLarge!
                                          .copyWith(color: appTheme.black900)),
                                  SizedBox(height: 2.v),
                                  Text(addressText,
                                      style: theme.textTheme.bodySmall!
                                          .copyWith(color: appTheme.black900))
                                ]))
                      ]))),
          Align(
              alignment: Alignment.topCenter,
              child: Padding(
                  padding:
                      EdgeInsets.only(left: 16.h, right: 16.h, bottom: 54.v),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(specializationText,
                            style: theme.textTheme.titleMedium!
                                .copyWith(color: appTheme.black900)),
                        Text(editText,
                            style: CustomTextStyles.titleMediumMedium_1
                                .copyWith(color: appTheme.black900))
                      ])))
        ]));
  }

  /// Navigates to the androidLargeSixContainerScreen when the action is triggered.
  onTapArrowDown(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.androidLargeSixContainerScreen,
    );
  }
}
