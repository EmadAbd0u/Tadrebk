import 'bloc/android_large_eleven_bloc.dart';
import 'models/android_large_eleven_model.dart';
import 'package:emad_s_application1/core/app_export.dart';
import 'package:emad_s_application1/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:emad_s_application1/widgets/app_bar/appbar_subtitle_three.dart';
import 'package:emad_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:emad_s_application1/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class AndroidLargeElevenScreen extends StatelessWidget {
  const AndroidLargeElevenScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<AndroidLargeElevenBloc>(
      create: (context) => AndroidLargeElevenBloc(AndroidLargeElevenState(
        androidLargeElevenModelObj: AndroidLargeElevenModel(),
      ))
        ..add(AndroidLargeElevenInitialEvent()),
      child: AndroidLargeElevenScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AndroidLargeElevenBloc, AndroidLargeElevenState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: SizedBox(
              width: double.maxFinite,
              child: Column(
                children: [
                  _buildAppBar(context),
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 14.h,
                      vertical: 2.v,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 19.h),
                          child: Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(top: 3.v),
                                child: Text(
                                  "lbl_change_photo".en,
                                  style: theme.textTheme.titleSmall,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 7.h),
                                child: CustomIconButton(
                                  height: 21.adaptSize,
                                  width: 21.adaptSize,
                                  padding: EdgeInsets.all(4.h),
                                  decoration:
                                      IconButtonStyleHelper.fillIndigoTL10,
                                  child: CustomImageView(
                                    imagePath: ImageConstant.imgGroup84,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 18.v),
                        _buildSpecialization(
                          context,
                          specializationText: "lbl_address".en,
                          editText: "lbl_edit".en,
                        ),
                        SizedBox(height: 3.v),
                        Row(
                          children: [
                            CustomIconButton(
                              height: 48.adaptSize,
                              width: 48.adaptSize,
                              padding: EdgeInsets.all(13.h),
                              decoration: IconButtonStyleHelper.fillBlueGray,
                              child: CustomImageView(
                                imagePath: ImageConstant.imgOcticonLocation16,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 9.h,
                                top: 11.v,
                                bottom: 7.v,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "lbl_cairo".en,
                                    style: theme.textTheme.labelLarge,
                                  ),
                                  SizedBox(height: 2.v),
                                  Text(
                                    "msg_shobra_el_khema".en,
                                    style: theme.textTheme.bodySmall,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 4.v),
                        Divider(
                          color: appTheme.gray900.withOpacity(0.5),
                          indent: 2.h,
                        ),
                        SizedBox(height: 3.v),
                        _buildSpecialization(
                          context,
                          specializationText: "lbl_specialization".en,
                          editText: "lbl_edit".en,
                        ),
                        SizedBox(height: 3.v),
                        Padding(
                          padding: EdgeInsets.only(right: 79.h),
                          child: Row(
                            children: [
                              CustomIconButton(
                                height: 48.adaptSize,
                                width: 48.adaptSize,
                                padding: EdgeInsets.all(13.h),
                                decoration: IconButtonStyleHelper.fillBlueGray,
                                child: CustomImageView(
                                  imagePath: ImageConstant.imgGroup6,
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsets.only(
                                    left: 9.h,
                                    top: 13.v,
                                    bottom: 6.v,
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "msg_management_information".en,
                                        style: theme.textTheme.labelLarge,
                                      ),
                                      SizedBox(height: 1.v),
                                      Text(
                                        "msg_frontend_developer2".en,
                                        style: theme.textTheme.bodySmall,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 4.v),
                        Divider(
                          color: appTheme.gray900.withOpacity(0.5),
                          indent: 2.h,
                        ),
                        _buildContactInfo(context),
                        SizedBox(height: 5.v),
                        Padding(
                          padding: EdgeInsets.only(left: 2.h),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomIconButton(
                                height: 48.adaptSize,
                                width: 48.adaptSize,
                                padding: EdgeInsets.all(13.h),
                                decoration: IconButtonStyleHelper.fillBlueGray,
                                child: CustomImageView(
                                  imagePath: ImageConstant.imgMdiTelephone,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 7.h,
                                  top: 12.v,
                                  bottom: 20.v,
                                ),
                                child: Text(
                                  "lbl_99234489899".en,
                                  style: theme.textTheme.labelLarge,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 5.v),
                        Divider(
                          color: appTheme.gray900.withOpacity(0.5),
                          indent: 2.h,
                        ),
                        SizedBox(height: 5.v),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildAppBar(BuildContext context) {
    return SizedBox(
      height: 224.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 18.v),
              decoration: AppDecoration.gradientBlueGrayToOnPrimaryContainer,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(height: 12.v),
                  CustomAppBar(
                    height: 35.v,
                    leadingWidth: 51.h,
                    leading: AppbarLeadingIconbutton(
                      imagePath: ImageConstant.imgArrowDown,
                      margin: EdgeInsets.only(left: 16.h),
                    ),
                    title: AppbarSubtitleThree(
                      text: "lbl_profile".en,
                      margin: EdgeInsets.only(left: 14.h),
                    ),
                  ),
                  SizedBox(height: 57.v),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: EdgeInsets.only(right: 75.h),
                      child: Text(
                        "lbl_youseef_sayed".en,
                        style: CustomTextStyles.bodyLargeKanitOnPrimary,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgEllipse5130x130,
            height: 130.adaptSize,
            width: 130.adaptSize,
            radius: BorderRadius.circular(
              65.h,
            ),
            alignment: Alignment.bottomLeft,
            margin: EdgeInsets.only(left: 24.h),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildContactInfo(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 2.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 1.v),
            child: Text(
              "lbl_contact_info".en,
              style: theme.textTheme.titleMedium,
            ),
          ),
          Text(
            "lbl_edit".en,
            style: CustomTextStyles.titleMediumMedium_1,
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildSpecialization(
    BuildContext context, {
    required String specializationText,
    required String editText,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 2.v),
          child: Text(
            specializationText,
            style: theme.textTheme.titleMedium!.copyWith(
              color: appTheme.black900,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(bottom: 2.v),
          child: Text(
            editText,
            style: CustomTextStyles.titleMediumMedium_1.copyWith(
              color: appTheme.black900,
            ),
          ),
        ),
      ],
    );
  }
}
