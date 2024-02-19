import 'bloc/frame_165_bloc.dart';
import 'models/frame_165_model.dart';
import 'package:emad_s_application1/core/app_export.dart';
import 'package:emad_s_application1/presentation/android_large_six_page/android_large_six_page.dart';
import 'package:emad_s_application1/presentation/frame_164_page/frame_164_page.dart';
import 'package:emad_s_application1/presentation/frame_168_page/frame_168_page.dart';
import 'package:emad_s_application1/widgets/custom_bottom_bar.dart';
import 'package:emad_s_application1/widgets/custom_switch.dart';
import 'package:flutter/material.dart';

class Frame165Screen extends StatelessWidget {
  Frame165Screen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<Frame165Bloc>(
      create: (context) => Frame165Bloc(Frame165State(
        frame165ModelObj: Frame165Model(),
      ))
        ..add(Frame165InitialEvent()),
      child: Frame165Screen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: 726.v,
          width: double.maxFinite,
          decoration: AppDecoration.fillGray100,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              _buildTwentyFourRow1(context),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  margin: EdgeInsets.only(
                    left: 16.h,
                    right: 16.h,
                    bottom: 5.v,
                  ),
                  padding: EdgeInsets.symmetric(vertical: 19.v),
                  decoration: AppDecoration.outlineGray.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder16,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 2.v),
                      Padding(
                        padding: EdgeInsets.only(left: 25.h),
                        child: Row(
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgMegaphone,
                              height: 40.adaptSize,
                              width: 40.adaptSize,
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 12.h,
                                top: 11.v,
                                bottom: 6.v,
                              ),
                              child: Text(
                                "lbl_yousef_sayed".en,
                                style: theme.textTheme.bodyLarge,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 24.v),
                      Divider(),
                      SizedBox(height: 18.v),
                      Padding(
                        padding: EdgeInsets.only(left: 26.h),
                        child: Text(
                          "msg_account_settings".en,
                          style: CustomTextStyles.bodyLargeGray500,
                        ),
                      ),
                      SizedBox(height: 28.v),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 26.h,
                          right: 41.h,
                        ),
                        child: _buildThirtyRow(
                          context,
                          changePassword: "lbl_edit_profile".en,
                          arrowRight: ImageConstant.imgArrowRight,
                        ),
                      ),
                      SizedBox(height: 31.v),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 26.h,
                          right: 41.h,
                        ),
                        child: _buildThirtyRow(
                          context,
                          changePassword: "lbl_change_password".en,
                          arrowRight: ImageConstant.imgArrowRight,
                        ),
                      ),
                      SizedBox(height: 34.v),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 26.h,
                          right: 41.h,
                        ),
                        child: _buildThirtyRow(
                          context,
                          changePassword: "msg_add_a_payment_method".en,
                          arrowRight: ImageConstant.imgPlus,
                        ),
                      ),
                      SizedBox(height: 29.v),
                      Align(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 26.h),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: EdgeInsets.symmetric(vertical: 3.v),
                                child: Text(
                                  "msg_push_notifications".en,
                                  style: theme.textTheme.bodyLarge,
                                ),
                              ),
                              BlocSelector<Frame165Bloc, Frame165State, bool?>(
                                selector: (state) => state.isSelectedSwitch,
                                builder: (context, isSelectedSwitch) {
                                  return CustomSwitch(
                                    value: isSelectedSwitch,
                                    onChange: (value) {
                                      context
                                          .read<Frame165Bloc>()
                                          .add(ChangeSwitchEvent(value: value));
                                    },
                                  );
                                },
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 23.v),
                      Divider(),
                      SizedBox(height: 23.v),
                      Padding(
                        padding: EdgeInsets.only(left: 25.h),
                        child: Text(
                          "lbl_more".en,
                          style: CustomTextStyles.bodyLargeGray500,
                        ),
                      ),
                      SizedBox(height: 30.v),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 25.h,
                          right: 36.h,
                        ),
                        child: _buildTwentyFourRow(
                          context,
                          privacyPolicyText: "lbl_about_us".en,
                        ),
                      ),
                      SizedBox(height: 31.v),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 25.h,
                          right: 36.h,
                        ),
                        child: _buildTwentyFourRow(
                          context,
                          privacyPolicyText: "lbl_privacy_policy".en,
                        ),
                      ),
                      SizedBox(height: 30.v),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 25.h,
                          right: 36.h,
                        ),
                        child: _buildTwentyFourRow(
                          context,
                          privacyPolicyText: "msg_terms_and_conditions".en,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomBar(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildTwentyFourRow1(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        width: double.maxFinite,
        margin: EdgeInsets.only(bottom: 432.v),
        padding: EdgeInsets.symmetric(
          horizontal: 16.h,
          vertical: 27.v,
        ),
        decoration: AppDecoration.fillIndigo.copyWith(
          borderRadius: BorderRadiusStyle.customBorderBL12,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgSearch,
              height: 35.adaptSize,
              width: 35.adaptSize,
              margin: EdgeInsets.only(bottom: 203.v),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 14.h,
                top: 10.v,
                bottom: 193.v,
              ),
              child: Text(
                "lbl_settings".en,
                style: theme.textTheme.headlineMedium,
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Navigator.pushNamed(
            navigatorKey.currentContext!, getCurrentRoute(type));
      },
    );
  }

  /// Common widget
  Widget _buildThirtyRow(
    BuildContext context, {
    required String changePassword,
    required String arrowRight,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 2.v),
          child: Text(
            changePassword,
            style: theme.textTheme.bodyLarge!.copyWith(
              color: appTheme.black900,
            ),
          ),
        ),
        CustomImageView(
          imagePath: arrowRight,
          height: 21.adaptSize,
          width: 21.adaptSize,
          margin: EdgeInsets.only(bottom: 3.v),
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildTwentyFourRow(
    BuildContext context, {
    required String privacyPolicyText,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 2.v),
          child: Text(
            privacyPolicyText,
            style: theme.textTheme.bodyLarge!.copyWith(
              color: appTheme.black900,
            ),
          ),
        ),
        CustomImageView(
          imagePath: ImageConstant.imgArrowRight,
          height: 21.adaptSize,
          width: 21.adaptSize,
          margin: EdgeInsets.only(bottom: 3.v),
        ),
      ],
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.androidLargeSixPage;
      case BottomBarEnum.Notificattion:
        return AppRoutes.frame168Page;
      case BottomBarEnum.Chatbot:
        return "/";
      case BottomBarEnum.Setting:
        return AppRoutes.frame164Page;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(
    BuildContext context,
    String currentRoute,
  ) {
    switch (currentRoute) {
      case AppRoutes.androidLargeSixPage:
        return AndroidLargeSixPage.builder(context);
      case AppRoutes.frame168Page:
        return Frame168Page.builder(context);
      case AppRoutes.frame164Page:
        return Frame164Page.builder(context);
      default:
        return DefaultWidget();
    }
  }
}
