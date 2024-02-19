import 'bloc/android_large_eighteen_bloc.dart';
import 'models/android_large_eighteen_model.dart';
import 'package:emad_s_application1/core/app_export.dart';
import 'package:emad_s_application1/core/utils/validation_functions.dart';
import 'package:emad_s_application1/widgets/custom_elevated_button.dart';
import 'package:emad_s_application1/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class AndroidLargeEighteenScreen extends StatelessWidget {
  AndroidLargeEighteenScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<AndroidLargeEighteenBloc>(
        create: (context) => AndroidLargeEighteenBloc(AndroidLargeEighteenState(
            androidLargeEighteenModelObj: AndroidLargeEighteenModel()))
          ..add(AndroidLargeEighteenInitialEvent()),
        child: AndroidLargeEighteenScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Center(
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: Form(
                        key: _formKey,
                        child: Container(
                            width: double.maxFinite,
                            padding: EdgeInsets.symmetric(
                                horizontal: 16.h, vertical: 97.v),
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text("lbl_reset_password".en,
                                          style:
                                              theme.textTheme.headlineLarge)),
                                  Spacer(flex: 48),
                                  Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 14.h),
                                      child: BlocSelector<
                                              AndroidLargeEighteenBloc,
                                              AndroidLargeEighteenState,
                                              TextEditingController?>(
                                          selector: (state) =>
                                              state.newpasswordController,
                                          builder:
                                              (context, newpasswordController) {
                                            return CustomTextFormField(
                                                textAlignVertical:  TextAlignVertical.center,

                                                controller:
                                                    newpasswordController,
                                                hintText:
                                                    "msg_enter_your_new_password"
                                                        .en,
                                                textInputType: TextInputType
                                                    .visiblePassword,
                                                validator: (value) {
                                                  if (value == null ||
                                                      (!isValidPassword(value,
                                                          isRequired: true))) {
                                                    return "err_msg_please_enter_valid_password"
                                                        .en;
                                                  }
                                                  return null;
                                                },
                                                obscureText: true,
                                                contentPadding:
                                                    EdgeInsets.symmetric(
                                                        horizontal: 14.h,
                                                        vertical: 15.v));
                                          })),
                                  SizedBox(height: 12.v),
                                  Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 14.h),
                                      child: BlocSelector<
                                              AndroidLargeEighteenBloc,
                                              AndroidLargeEighteenState,
                                              TextEditingController?>(
                                          selector: (state) =>
                                              state.confirmpasswordController,
                                          builder: (context,
                                              confirmpasswordController) {
                                            return CustomTextFormField(
                                                textAlignVertical:  TextAlignVertical.center,

                                                controller:
                                                    confirmpasswordController,
                                                hintText:
                                                    "msg_confirm_password".en,
                                                textInputAction:
                                                    TextInputAction.done,
                                                textInputType: TextInputType
                                                    .visiblePassword,
                                                validator: (value) {
                                                  if (value == null ||
                                                      (!isValidPassword(value,
                                                          isRequired: true))) {
                                                    return "err_msg_please_enter_valid_password"
                                                        .en;
                                                  }
                                                  return null;
                                                },
                                                obscureText: true,
                                                contentPadding:
                                                    EdgeInsets.symmetric(
                                                        horizontal: 17.h,
                                                        vertical: 15.v));
                                          })),
                                  Spacer(flex: 51),
                                  SizedBox(height: 12.v),
                                  CustomElevatedButton(
                                      text: "lbl_reset".en,
                                      margin: EdgeInsets.symmetric(
                                          horizontal: 14.h),
                                      buttonStyle: CustomButtonStyles.none,
                                      decoration: CustomButtonStyles
                                          .gradientBlueGrayToPrimaryDecoration,
                                      onPressed: () {
                                        onTapReset(context);
                                      })
                                ])))))));
  }

  /// Navigates to the androidLargeNineteenScreen when the action is triggered.
  onTapReset(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.androidLargeNineteenScreen,
    );
  }
}
