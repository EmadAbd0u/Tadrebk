import 'bloc/chat_bot_page_bloc.dart';
import 'models/chat_bot_page_model.dart';
import 'package:emad_s_application1/core/app_export.dart';
import 'package:emad_s_application1/widgets/app_bar/appbar_leading_iconbutton_two.dart';
import 'package:emad_s_application1/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:emad_s_application1/widgets/app_bar/appbar_trailing_circleimage.dart';
import 'package:emad_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:emad_s_application1/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class ChatBotPageScreen extends StatelessWidget {
  const ChatBotPageScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<ChatBotPageBloc>(
        create: (context) => ChatBotPageBloc(
            ChatBotPageState(chatBotPageModelObj: ChatBotPageModel()))
          ..add(ChatBotPageInitialEvent()),
        child: ChatBotPageScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChatBotPageBloc, ChatBotPageState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              appBar: _buildAppBar(context),
              body: Container(
                  width: double.maxFinite,
                  padding:
                      EdgeInsets.symmetric(horizontal: 16.h, vertical: 40.v),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomIconButton(
                                  height: 28.adaptSize,
                                  width: 28.adaptSize,
                                  padding: EdgeInsets.all(4.h),
                                  decoration: IconButtonStyleHelper.fillPrimary,
                                  child: CustomImageView(
                                      imagePath:
                                          ImageConstant.imgGroup87Onprimary)),
                              Padding(
                                  padding: EdgeInsets.only(
                                      left: 8.h, top: 6.v, bottom: 7.v),
                                  child: Text("lbl_chat_bot3".en,
                                      style: CustomTextStyles.bodySmall11_1))
                            ]),
                        SizedBox(height: 13.v),
                        Container(
                            margin: EdgeInsets.only(right: 111.h),
                            padding: EdgeInsets.symmetric(
                                horizontal: 5.h, vertical: 3.v),
                            decoration: AppDecoration.fillBlueGray.copyWith(
                                borderRadius: BorderRadiusStyle.circleBorder6),
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(height: 2.v),
                                  Text("msg_welcome_how_can".en,
                                      style: CustomTextStyles.bodySmall12)
                                ])),
                        SizedBox(height: 5.v)
                      ])),
              bottomNavigationBar: _buildView(context)));
    });
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 85.v,
        leadingWidth: 56.h,
        leading: AppbarLeadingIconbuttonTwo(
            imagePath: ImageConstant.imgArrowDownBlack900,
            margin: EdgeInsets.only(left: 16.h, top: 23.v, bottom: 22.v),
            onTap: () {
              onTapArrowDown(context);
            }),
        actions: [
          AppbarSubtitleTwo(
              text: "lbl_chat_bot2".en,
              margin: EdgeInsets.fromLTRB(16.h, 32.v, 14.h, 18.v)),
          AppbarTrailingCircleimage(
              imagePath: ImageConstant.imgEllipse7,
              margin: EdgeInsets.only(left: 5.h, top: 15.v, right: 30.h))
        ],
        styleType: Style.bgShadow);
  }

  /// Section Widget
  Widget _buildView(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 16.h, right: 16.h, bottom: 20.v),
        decoration: AppDecoration.fillOnPrimary,
        child: Container(
            height: 49.v,
            width: 328.h,
            decoration: AppDecoration.outlineBlack9002,
            child: Stack(alignment: Alignment.center, children: [
              Align(
                  alignment: Alignment.center,
                  child: Container(
                      height: 49.v,
                      width: 328.h,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(24.h),
                          border: Border.all(
                              color: theme.colorScheme.primary, width: 3.h)))),
              Align(
                  alignment: Alignment.center,
                  child: Padding(
                      padding: EdgeInsets.fromLTRB(25.h, 8.v, 10.h, 8.v),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                                padding: EdgeInsets.only(top: 6.v, bottom: 5.v),
                                child: Text("msg_start_a_new_chat".en,
                                    style: CustomTextStyles
                                        .bodyLargeInterGray900)),
                            Spacer(),
                            CustomImageView(
                                imagePath: ImageConstant.imgMaterialSymbol,
                                height: 30.adaptSize,
                                width: 30.adaptSize),
                            CustomImageView(
                                imagePath: ImageConstant.imgIonMicOutline,
                                height: 30.adaptSize,
                                width: 30.adaptSize),
                            Padding(
                                padding: EdgeInsets.only(left: 10.h),
                                child: CustomIconButton(
                                    height: 32.adaptSize,
                                    width: 32.adaptSize,
                                    padding: EdgeInsets.all(5.h),
                                    decoration:
                                        IconButtonStyleHelper.fillPrimaryTL16,
                                    child: CustomImageView(
                                        imagePath: ImageConstant
                                            .imgArrowLeftOnprimary)))
                          ])))
            ])));
  }

  /// Navigates to the androidLargeSixContainerScreen when the action is triggered.
  onTapArrowDown(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.androidLargeSixContainerScreen,
    );
  }
}
