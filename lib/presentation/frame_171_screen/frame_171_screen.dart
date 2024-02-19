import 'bloc/frame_171_bloc.dart';
import 'models/frame_171_model.dart';
import 'package:emad_s_application1/core/app_export.dart';
import 'package:emad_s_application1/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class Frame171Screen extends StatelessWidget {
  const Frame171Screen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<Frame171Bloc>(
        create: (context) =>
            Frame171Bloc(Frame171State(frame171ModelObj: Frame171Model()))
              ..add(Frame171InitialEvent()),
        child: Frame171Screen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<Frame171Bloc, Frame171State>(builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              body: Container(
                  width: 219.h,
                  padding: EdgeInsets.symmetric(vertical: 42.v),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 22.v),
                        Padding(
                            padding: EdgeInsets.only(left: 20.h, right: 42.h),
                            child: Row(children: [
                              CustomImageView(
                                  imagePath: ImageConstant.imgEllipse540x40,
                                  height: 40.adaptSize,
                                  width: 40.adaptSize,
                                  radius: BorderRadius.circular(20.h)),
                              Padding(
                                  padding: EdgeInsets.only(
                                      left: 11.h, top: 9.v, bottom: 6.v),
                                  child: Text("lbl_youseef_sayed".en,
                                      style: CustomTextStyles.titleMediumKanit))
                            ])),
                        SizedBox(height: 11.v),
                        Divider(color: appTheme.black900.withOpacity(0.5)),
                        SizedBox(height: 44.v),
                        GestureDetector(
                            onTap: () {
                              onTapPlay(context);
                            },
                            child: Padding(
                                padding: EdgeInsets.only(left: 20.h),
                                child: Row(children: [
                                  SizedBox(
                                      height: 35.adaptSize,
                                      width: 35.adaptSize,
                                      child: Stack(
                                          alignment: Alignment.center,
                                          children: [
                                            CustomImageView(
                                                imagePath:
                                                    ImageConstant.imgPlay,
                                                height: 35.adaptSize,
                                                width: 35.adaptSize,
                                                alignment: Alignment.center),
                                            CustomImageView(
                                                imagePath:
                                                    ImageConstant.imgGroup5,
                                                height: 27.adaptSize,
                                                width: 27.adaptSize,
                                                alignment: Alignment.center)
                                          ])),
                                  Padding(
                                      padding: EdgeInsets.only(
                                          left: 10.h, top: 11.v, bottom: 8.v),
                                      child: Text("lbl_my_profile".en,
                                          style: theme.textTheme.labelLarge))
                                ]))),
                        SizedBox(height: 14.v),
                        GestureDetector(
                            onTap: () {
                              onTapMyTraining(context);
                            },
                            child: Padding(
                                padding: EdgeInsets.only(left: 20.h),
                                child: Row(children: [
                                  CustomIconButton(
                                      height: 35.adaptSize,
                                      width: 35.adaptSize,
                                      padding: EdgeInsets.all(6.h),
                                      decoration:
                                          IconButtonStyleHelper.fillPrimaryTL10,
                                      child: CustomImageView(
                                          imagePath: ImageConstant
                                              .imgGroup5Onprimary)),
                                  Padding(
                                      padding: EdgeInsets.only(
                                          left: 10.h, top: 11.v, bottom: 8.v),
                                      child: Text("lbl_my_training".en,
                                          style: theme.textTheme.labelLarge))
                                ]))),
                        SizedBox(height: 14.v),
                        GestureDetector(
                            onTap: () {
                              onTapChatBot(context);
                            },
                            child: Padding(
                                padding: EdgeInsets.only(left: 20.h),
                                child: Row(children: [
                                  CustomIconButton(
                                      height: 35.adaptSize,
                                      width: 35.adaptSize,
                                      padding: EdgeInsets.all(6.h),
                                      decoration:
                                          IconButtonStyleHelper.fillPrimaryTL10,
                                      child: CustomImageView(
                                          imagePath: ImageConstant
                                              .imgGroup87Onprimary)),
                                  Padding(
                                      padding: EdgeInsets.only(
                                          left: 10.h, top: 10.v, bottom: 9.v),
                                      child: Text("lbl_chat_bot2".en,
                                          style: theme.textTheme.labelLarge))
                                ]))),
                        SizedBox(height: 14.v),
                        Padding(
                            padding: EdgeInsets.only(left: 20.h),
                            child: Row(children: [
                              CustomIconButton(
                                  height: 35.adaptSize,
                                  width: 35.adaptSize,
                                  padding: EdgeInsets.all(6.h),
                                  decoration:
                                      IconButtonStyleHelper.fillPrimaryTL10,
                                  child: CustomImageView(
                                      imagePath: ImageConstant
                                          .imgGroup87Onprimary35x35)),
                              Padding(
                                  padding: EdgeInsets.only(
                                      left: 10.h, top: 10.v, bottom: 9.v),
                                  child: Text("lbl_about_us2".en,
                                      style: theme.textTheme.labelLarge))
                            ])),
                        SizedBox(height: 14.v),
                        GestureDetector(
                            onTap: () {
                              onTapSettings(context);
                            },
                            child: Padding(
                                padding: EdgeInsets.only(left: 20.h),
                                child: Row(children: [
                                  CustomIconButton(
                                      height: 35.adaptSize,
                                      width: 35.adaptSize,
                                      padding: EdgeInsets.all(6.h),
                                      decoration:
                                          IconButtonStyleHelper.fillPrimaryTL10,
                                      child: CustomImageView(
                                          imagePath: ImageConstant
                                              .imgGroup100Onprimary)),
                                  Padding(
                                      padding: EdgeInsets.only(
                                          left: 10.h, top: 11.v, bottom: 8.v),
                                      child: Text("lbl_settings".en,
                                          style: theme.textTheme.labelLarge))
                                ]))),
                        Spacer(),
                        Padding(
                            padding: EdgeInsets.only(left: 27.h),
                            child: Row(children: [
                              CustomIconButton(
                                  height: 35.adaptSize,
                                  width: 35.adaptSize,
                                  padding: EdgeInsets.all(7.h),
                                  decoration:
                                      IconButtonStyleHelper.fillPrimaryTL10,
                                  child: CustomImageView(
                                      imagePath: ImageConstant.imgTelevision)),
                              Padding(
                                  padding: EdgeInsets.only(
                                      left: 10.h, top: 11.v, bottom: 8.v),
                                  child: Text("lbl_log_out".en,
                                      style: theme.textTheme.labelLarge))
                            ]))
                      ]))));
    });
  }

  /// Navigates to the androidLargeElevenScreen when the action is triggered.
  onTapPlay(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.androidLargeElevenScreen,
    );
  }

  /// Navigates to the androidLargeTwentyoneScreen when the action is triggered.
  onTapMyTraining(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.androidLargeTwentyoneScreen,
    );
  }

  /// Navigates to the chatBotPageOneScreen when the action is triggered.
  onTapChatBot(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.chatBotPageOneScreen,
    );
  }

  /// Navigates to the frame165Screen when the action is triggered.
  onTapSettings(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.frame165Screen,
    );
  }
}
