import 'bloc/android_large_sixteen_bloc.dart';
import 'models/android_large_sixteen_model.dart';
import 'package:emad_s_application1/core/app_export.dart';
import 'package:emad_s_application1/core/utils/validation_functions.dart';
import 'package:emad_s_application1/widgets/custom_elevated_button.dart';
import 'package:emad_s_application1/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class AndroidLargeSixteenScreen extends StatelessWidget {
  AndroidLargeSixteenScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<AndroidLargeSixteenBloc>(
      create: (context) => AndroidLargeSixteenBloc(AndroidLargeSixteenState(
        androidLargeSixteenModelObj: AndroidLargeSixteenModel(),
      ))
        ..add(AndroidLargeSixteenInitialEvent()),
      child: AndroidLargeSixteenScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Form(
              key: _formKey,
              child: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(
                  horizontal: 16.h,
                  vertical: 105.v,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "lbl_forget".en,
                      style: theme.textTheme.headlineLarge,
                    ),
                    Text(
                      "lbl_password2".en,
                      style: theme.textTheme.headlineLarge,
                    ),
                    Spacer(
                      flex: 43,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 28.h),
                      child: Text(
                        "lbl_phone_number".en,
                        style: CustomTextStyles.bodyLargeRoboto,
                      ),
                    ),
                    SizedBox(height: 6.v),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 14.h),
                      child: BlocSelector<AndroidLargeSixteenBloc,
                          AndroidLargeSixteenState, TextEditingController?>(
                        selector: (state) => state.phoneNumberController,
                        builder: (context, phoneNumberController) {
                          return CustomTextFormField(
                            textAlignVertical:  TextAlignVertical.center,
                            controller: phoneNumberController,
                            hintText: "msg_enter_your_phone".en,
                            textInputAction: TextInputAction.done,
                            textInputType: TextInputType.phone,
                            alignment: Alignment.center,
                            validator: (value) {
                              if (!isValidPhone(value)) {
                                return "err_msg_please_enter_valid_phone_number"
                                    .en;
                              }
                              return null;
                            },
                            contentPadding: EdgeInsets.symmetric(
                              horizontal: 17.h,
                              vertical: 15.v,
                            ),
                          );
                        },
                      ),
                    ),
                    SizedBox(height: 22.v),
                    CustomElevatedButton(
                      text: "msg_request_a_reset".en,
                      margin: EdgeInsets.symmetric(horizontal: 14.h),
                      buttonStyle: CustomButtonStyles.none,
                      decoration: CustomButtonStyles
                          .gradientBlueGrayToPrimaryDecoration,
                      alignment: Alignment.center,
                    ),
                    Spacer(
                      flex: 56,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
