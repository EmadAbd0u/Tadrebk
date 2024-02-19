import 'bloc/chat_bot_page_one_bloc.dart';
import 'models/chat_bot_page_one_model.dart';
import 'package:emad_s_application1/core/app_export.dart';
import 'package:emad_s_application1/widgets/app_bar/appbar_leading_iconbutton_two.dart';
import 'package:emad_s_application1/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:emad_s_application1/widgets/app_bar/appbar_trailing_circleimage.dart';
import 'package:emad_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:emad_s_application1/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class ChatBotPageOneScreen extends StatelessWidget {
  const ChatBotPageOneScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<ChatBotPageOneBloc>(
      create: (context) => ChatBotPageOneBloc(ChatBotPageOneState(
        chatBotPageOneModelObj: ChatBotPageOneModel(),
      ))
        ..add(ChatBotPageOneInitialEvent()),
      child: ChatBotPageOneScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChatBotPageOneBloc, ChatBotPageOneState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            appBar: _buildAppBar(context),
            body: SizedBox(
              width: SizeUtils.width,
              child: SingleChildScrollView(
                padding: EdgeInsets.only(top: 40.v),
                child: Padding(
                  padding: EdgeInsets.only(bottom: 5.v),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 16.h),
                        child: _buildChatBotRow(
                          context,
                          chatBot: "lbl_chat_bot3".en,
                        ),
                      ),
                      SizedBox(height: 13.v),
                      Container(
                        margin: EdgeInsets.only(
                          left: 16.h,
                          right: 127.h,
                        ),
                        padding: EdgeInsets.symmetric(
                          horizontal: 5.h,
                          vertical: 3.v,
                        ),
                        decoration: AppDecoration.fillBlueGray.copyWith(
                          borderRadius: BorderRadiusStyle.circleBorder6,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(height: 2.v),
                            Text(
                              "msg_welcome_how_can".en,
                              style: CustomTextStyles.bodySmall12,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 11.v),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Container(
                          margin: EdgeInsets.only(
                            left: 127.h,
                            right: 16.h,
                          ),
                          padding: EdgeInsets.symmetric(
                            horizontal: 15.h,
                            vertical: 3.v,
                          ),
                          decoration: AppDecoration.fillPrimary.copyWith(
                            borderRadius: BorderRadiusStyle.circleBorder6,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(height: 2.v),
                              Text(
                                "msg_what_types_of_training".en,
                                style: CustomTextStyles.bodySmallOnPrimary,
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 16.v),
                      Padding(
                        padding: EdgeInsets.only(left: 16.h),
                        child: _buildChatBotRow(
                          context,
                          chatBot: "lbl_chat_bot3".en,
                        ),
                      ),
                      SizedBox(height: 13.v),
                      Container(
                        height: 1007.v,
                        width: double.maxFinite,
                        padding: EdgeInsets.symmetric(horizontal: 16.h),
                        child: Stack(
                          alignment: Alignment.topCenter,
                          children: [
                            Align(
                              alignment: Alignment.center,
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 11.h,
                                  vertical: 7.v,
                                ),
                                decoration: AppDecoration.fillBlueGray.copyWith(
                                  borderRadius: BorderRadiusStyle.circleBorder6,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    SizedBox(height: 1.v),
                                    SizedBox(
                                      width: 303.h,
                                      child: Text(
                                        "msg_we_can_offer_a_wide".en,
                                        maxLines: 68,
                                        overflow: TextOverflow.ellipsis,
                                        style: CustomTextStyles.bodySmall12,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            _buildFrame(context),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
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
      height: 85.v,
      leadingWidth: 56.h,
      leading: AppbarLeadingIconbuttonTwo(
        imagePath: ImageConstant.imgArrowDownBlack900,
        margin: EdgeInsets.only(
          left: 16.h,
          top: 23.v,
          bottom: 22.v,
        ),
      ),
      actions: [
        AppbarSubtitleTwo(
          text: "lbl_chat_bot2".en,
          margin: EdgeInsets.fromLTRB(16.h, 32.v, 14.h, 18.v),
        ),
        AppbarTrailingCircleimage(
          imagePath: ImageConstant.imgEllipse7,
          margin: EdgeInsets.only(
            left: 5.h,
            top: 15.v,
            right: 30.h,
          ),
        ),
      ],
      styleType: Style.bgShadow,
    );
  }

  /// Section Widget
  Widget _buildFrame(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        height: 62.v,
        width: 328.h,
        margin: EdgeInsets.only(top: 446.v),
        decoration: AppDecoration.outlineBlack9002,
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                height: 49.v,
                width: 328.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    24.h,
                  ),
                  border: Border.all(
                    color: theme.colorScheme.primary,
                    width: 3.h,
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: EdgeInsets.fromLTRB(25.h, 8.v, 10.h, 22.v),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        top: 6.v,
                        bottom: 5.v,
                      ),
                      child: Text(
                        "msg_start_a_new_chat".en,
                        style: CustomTextStyles.bodyLargeInterGray900,
                      ),
                    ),
                    CustomIconButton(
                      height: 32.adaptSize,
                      width: 32.adaptSize,
                      padding: EdgeInsets.all(5.h),
                      decoration: IconButtonStyleHelper.fillPrimaryTL16,
                      child: CustomImageView(
                        imagePath: ImageConstant.imgArrowLeftOnprimary,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Common widget
  Widget _buildChatBotRow(
    BuildContext context, {
    required String chatBot,
  }) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomIconButton(
          height: 28.adaptSize,
          width: 28.adaptSize,
          padding: EdgeInsets.all(4.h),
          decoration: IconButtonStyleHelper.fillPrimary,
          child: CustomImageView(
            imagePath: ImageConstant.imgGroup87Onprimary,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 8.h,
            top: 6.v,
            bottom: 7.v,
          ),
          child: Text(
            chatBot,
            style: CustomTextStyles.bodySmall11_1.copyWith(
              color: appTheme.black900,
            ),
          ),
        ),
      ],
    );
  }
}
