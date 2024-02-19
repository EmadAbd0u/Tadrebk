import 'bloc/android_large_fifteen_bloc.dart';
import 'models/android_large_fifteen_model.dart';
import 'package:emad_s_application1/core/app_export.dart';
import 'package:emad_s_application1/widgets/app_bar/appbar_leading_image.dart';
import 'package:emad_s_application1/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:emad_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:emad_s_application1/widgets/custom_elevated_button.dart';
import 'package:emad_s_application1/widgets/custom_rating_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;

class AndroidLargeFifteenScreen extends StatelessWidget {
  const AndroidLargeFifteenScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<AndroidLargeFifteenBloc>(
        create: (context) => AndroidLargeFifteenBloc(AndroidLargeFifteenState(
            androidLargeFifteenModelObj: AndroidLargeFifteenModel()))
          ..add(AndroidLargeFifteenInitialEvent()),
        child: AndroidLargeFifteenScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AndroidLargeFifteenBloc, AndroidLargeFifteenState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              appBar: _buildAppBar(context),
              body: Container(
                  width: double.maxFinite,
                  padding: EdgeInsets.symmetric(vertical: 22.v),
                  child: Column(children: [
                    SizedBox(height: 22.v),
                    Expanded(
                        child: SingleChildScrollView(
                            child: Container(
                                margin: EdgeInsets.only(
                                    left: 26.h, right: 26.h, bottom: 5.v),
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image:
                                            fs.Svg(ImageConstant.imgGroup164),
                                        fit: BoxFit.cover)),
                                child: Column(children: [
                                  CustomImageView(
                                      imagePath: ImageConstant.imgRectangle36,
                                      height: 213.v,
                                      width: 307.h,
                                      radius: BorderRadius.circular(20.h)),
                                  SizedBox(height: 24.v),
                                  CustomElevatedButton(
                                      height: 43.v,
                                      text: "msg_al_abd_construcion".en,
                                      buttonStyle:
                                          CustomButtonStyles.fillIndigo,
                                      buttonTextStyle: CustomTextStyles
                                          .titleMediumOnPrimary_1),
                                  SizedBox(height: 25.v),
                                  _buildPostTime(context,
                                      postTime: "msg_training_required".en,
                                      duration: "lbl_engineering".en),
                                  SizedBox(height: 14.v),
                                  _buildPostTime(context,
                                      postTime: "lbl_post_time".en,
                                      duration: "lbl_1_day_ago".en),
                                  SizedBox(height: 14.v),
                                  _buildPostTime(context,
                                      postTime: "msg_training_status".en,
                                      duration: "lbl_available".en),
                                  SizedBox(height: 14.v),
                                  _buildPostTime(context,
                                      postTime: "lbl_training_time".en,
                                      duration: "msg_start_1_1_end".en),
                                  SizedBox(height: 14.v),
                                  _buildEvaluation(context),
                                  SizedBox(height: 14.v),
                                  _buildPostTime(context,
                                      postTime: "lbl_training_cost".en,
                                      duration: "lbl_180_l_e2".en)
                                ]))))
                  ])),
              bottomNavigationBar: _buildApplyForTraining(context)));
    });
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 56.v,
        leadingWidth: 40.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowDownOnprimary,
            margin: EdgeInsets.only(left: 16.h, top: 16.v, bottom: 17.v),
            onTap: () {
              onTapArrowDown(context);
            }),
        title: AppbarSubtitleOne(
            text: "lbl_engineering".en, margin: EdgeInsets.only(left: 18.h)));
  }

  /// Section Widget
  Widget _buildEvaluation(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 14.v),
        decoration: AppDecoration.outlineBluegray100
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
        child: Row(children: [
          Padding(
              padding: EdgeInsets.symmetric(vertical: 1.v),
              child: Text("lbl_evaluation".en,
                  style: CustomTextStyles.titleMediumIndigo90001)),
          Padding(
              padding: EdgeInsets.only(left: 18.h),
              child: CustomRatingBar(initialRating: 0, itemCount: 5))
        ]));
  }

  /// Section Widget
  Widget _buildApplyForTraining(BuildContext context) {
    return CustomElevatedButton(
        text: "msg_apply_for_training".en,
        margin: EdgeInsets.only(left: 17.h, right: 15.h, bottom: 35.v),
        buttonStyle: CustomButtonStyles.none,
        decoration: CustomButtonStyles.gradientBlueGrayToPrimaryTL30Decoration,
        buttonTextStyle: CustomTextStyles.titleMediumOnPrimary,
        onPressed: () {
          onTapApplyForTraining(context);
        });
  }

  /// Common widget
  Widget _buildPostTime(
    BuildContext context, {
    required String postTime,
    required String duration,
  }) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 13.v),
        decoration: AppDecoration.outlineBluegray100
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
        child: Row(children: [
          Padding(
              padding: EdgeInsets.only(top: 2.v, bottom: 1.v),
              child: Text(postTime,
                  style: CustomTextStyles.titleMediumIndigo90001
                      .copyWith(color: appTheme.indigo90001))),
          Padding(
              padding: EdgeInsets.only(left: 3.h, top: 2.v),
              child: Text(duration,
                  style: theme.textTheme.titleMedium!
                      .copyWith(color: appTheme.black900)))
        ]));
  }

  /// Navigates to the homePersonScreen when the action is triggered.
  onTapArrowDown(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.homePersonScreen,
    );
  }

  /// Navigates to the frame172Screen when the action is triggered.
  onTapApplyForTraining(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.frame172Screen,
    );
  }
}
