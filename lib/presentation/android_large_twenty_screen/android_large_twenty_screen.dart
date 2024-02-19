import 'bloc/android_large_twenty_bloc.dart';
import 'models/android_large_twenty_model.dart';
import 'package:emad_s_application1/core/app_export.dart';
import 'package:emad_s_application1/widgets/custom_elevated_button.dart';
import 'package:emad_s_application1/widgets/custom_pin_code_text_field.dart';
import 'package:flutter/material.dart';

class AndroidLargeTwentyScreen extends StatelessWidget {
  const AndroidLargeTwentyScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<AndroidLargeTwentyBloc>(
        create: (context) => AndroidLargeTwentyBloc(AndroidLargeTwentyState(
            androidLargeTwentyModelObj: AndroidLargeTwentyModel()))
          ..add(AndroidLargeTwentyInitialEvent()),
        child: AndroidLargeTwentyScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.only(left: 16.h, top: 96.v, right: 16.h),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("msg_verification_code".en,
                          style: theme.textTheme.headlineLarge),
                      SizedBox(height: 50.v),
                      Container(
                          width: 255.h,
                          margin: EdgeInsets.only(right: 72.h),
                          child: Text("msg_we_sent_you_a_code".en,
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                              style: CustomTextStyles.bodyLargeInter)),
                      SizedBox(height: 56.v),
                      Padding(
                          padding: EdgeInsets.symmetric(horizontal: 19.h),
                          child: BlocSelector<
                                  AndroidLargeTwentyBloc,
                                  AndroidLargeTwentyState,
                                  TextEditingController?>(
                              selector: (state) => state.otpController,
                              builder: (context, otpController) {
                                return CustomPinCodeTextField(
                                    context: context,
                                    controller: otpController,
                                    onChanged: (value) {
                                      otpController?.text = value;
                                    });
                              })),
                      SizedBox(height: 24.v),
                      RichText(
                          text: TextSpan(children: [
                            TextSpan(
                                text: "msg_don_t_get_a_code2".en,
                                style: CustomTextStyles.bodyLargeInterff000000),
                            TextSpan(
                                text: "lbl_resend".en,
                                style: CustomTextStyles.titleMediumff3a5793)
                          ]),
                          textAlign: TextAlign.left),
                      SizedBox(height: 75.v),
                      CustomElevatedButton(
                          text: "lbl_verify".en,
                          margin: EdgeInsets.symmetric(horizontal: 14.h),
                          buttonStyle: CustomButtonStyles.none,
                          decoration: CustomButtonStyles
                              .gradientBlueGrayToPrimaryDecoration,
                          buttonTextStyle:
                              CustomTextStyles.titleMediumOnPrimarySemiBold,
                          onPressed: () {
                            onTapVerify(context);
                          },
                          alignment: Alignment.center),
                      SizedBox(height: 5.v)
                    ]))));
  }

  /// Navigates to the androidLargeEighteenScreen when the action is triggered.
  onTapVerify(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.androidLargeEighteenScreen,
    );
  }
}
