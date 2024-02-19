import 'bloc/regester_person_bloc.dart';
import 'models/regester_person_model.dart';
import 'package:emad_s_application1/core/app_export.dart';
import 'package:emad_s_application1/core/utils/validation_functions.dart';
import 'package:emad_s_application1/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class RegesterPersonScreen extends StatelessWidget {
  RegesterPersonScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<RegesterPersonBloc>(
        create: (context) => RegesterPersonBloc(
            RegesterPersonState(regesterPersonModelObj: RegesterPersonModel()))
          ..add(RegesterPersonInitialEvent()),
        child: RegesterPersonScreen());
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
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: Form(
                        key: _formKey,
                        child: Container(
                            width: double.maxFinite,
                            padding: EdgeInsets.symmetric(
                                horizontal: 30.h, vertical: 41.v),
                            child: Column(children: [
                              SizedBox(height: 20.v),
                              CustomImageView(
                                  imagePath: ImageConstant.imgCreateAccount,
                                  height: 23.v,
                                  width: 234.h,
                                  alignment: Alignment.centerLeft,
                                  margin: EdgeInsets.only(left: 4.h)),
                              SizedBox(height: 5.v),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                      padding: EdgeInsets.only(left: 5.h),
                                      child: Text("lbl_person".en,
                                          style:
                                              theme.textTheme.headlineLarge))),
                              SizedBox(height: 16.v),
                              _buildSixtyFour(context),
                              SizedBox(height: 25.v),
                              _buildEmail(context),
                              SizedBox(height: 25.v),
                              _buildPassword(context),
                              SizedBox(height: 25.v),
                              _buildConfirmpassword(context),
                              SizedBox(height: 25.v),
                              _buildPhoneNumber(context),
                              SizedBox(height: 24.v),
                              _buildCity(context),
                              SizedBox(height: 39.v),
                              _buildFrame(context),
                              SizedBox(height: 17.v),
                              CustomImageView(
                                  imagePath: ImageConstant.imgIAlreadyHaveAn,
                                  height: 11.v,
                                  width: 124.h,
                                  onTap: () {
                                    onTapImgIAlreadyHaveAn(context);
                                  })
                            ])))))));
  }

  /// Section Widget
  Widget _buildFirstName(BuildContext context) {
    return Expanded(
        child: Padding(
            padding: EdgeInsets.only(right: 5.h),
            child: BlocSelector<RegesterPersonBloc, RegesterPersonState,
                    TextEditingController?>(
                selector: (state) => state.firstNameController,
                builder: (context, firstNameController) {
                  return CustomTextFormField(
                      textAlignVertical:  TextAlignVertical.center,
                      controller: firstNameController,
                      hintText: "lbl_first_name".en,
                      hintStyle: CustomTextStyles.titleSmallBluegray400,
                      validator: (value) {
                        if (!isText(value)) {
                          return "err_msg_please_enter_valid_text".en;
                        }
                        return null;
                      });
                })));
  }

  /// Section Widget
  Widget _buildLastName(BuildContext context) {
    return Expanded(
        child: Padding(
            padding: EdgeInsets.only(left: 5.h),
            child: BlocSelector<RegesterPersonBloc, RegesterPersonState,
                    TextEditingController?>(
                selector: (state) => state.lastNameController,
                builder: (context, lastNameController) {
                  return CustomTextFormField(
                      textAlignVertical:  TextAlignVertical.center,

                      controller: lastNameController,
                      hintText: "lbl_last_name".en,
                      hintStyle: CustomTextStyles.titleSmallBluegray400,
                      validator: (value) {
                        if (!isText(value)) {
                          return "err_msg_please_enter_valid_text".en;
                        }
                        return null;
                      });
                })));
  }

  /// Section Widget
  Widget _buildSixtyFour(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [_buildFirstName(context), _buildLastName(context)]);
  }

  /// Section Widget
  Widget _buildEmail(BuildContext context) {
    return BlocSelector<RegesterPersonBloc, RegesterPersonState,
            TextEditingController?>(
        selector: (state) => state.emailController,
        builder: (context, emailController) {
          return CustomTextFormField(
              textAlignVertical:  TextAlignVertical.center,

              controller: emailController,
              hintText: "lbl_email_address".en,
              hintStyle: CustomTextStyles.titleSmallBluegray400,
              textInputType: TextInputType.emailAddress,
              validator: (value) {
                if (value == null || (!isValidEmail(value, isRequired: true))) {
                  return "err_msg_please_enter_valid_email".en;
                }
                return null;
              });
        });
  }

  /// Section Widget
  Widget _buildPassword(BuildContext context) {
    return BlocSelector<RegesterPersonBloc, RegesterPersonState,
            TextEditingController?>(
        selector: (state) => state.passwordController,
        builder: (context, passwordController) {
          return CustomTextFormField(
              textAlignVertical:  TextAlignVertical.center,

              controller: passwordController,
              hintText: "lbl_password".en,
              hintStyle: CustomTextStyles.titleSmallBluegray400,
              textInputType: TextInputType.visiblePassword,
              validator: (value) {
                if (value == null ||
                    (!isValidPassword(value, isRequired: true))) {
                  return "err_msg_please_enter_valid_password".en;
                }
                return null;
              },
              obscureText: true);
        });
  }

  /// Section Widget
  Widget _buildConfirmpassword(BuildContext context) {
    return BlocSelector<RegesterPersonBloc, RegesterPersonState,
            TextEditingController?>(
        selector: (state) => state.confirmpasswordController,
        builder: (context, confirmpasswordController) {
          return CustomTextFormField(
              textAlignVertical:  TextAlignVertical.center,

              controller: confirmpasswordController,
              hintText: "msg_confirm_password2".en,
              hintStyle: CustomTextStyles.titleSmallBluegray400,
              textInputType: TextInputType.visiblePassword,
              validator: (value) {
                if (value == null ||
                    (!isValidPassword(value, isRequired: true))) {
                  return "err_msg_please_enter_valid_password".en;
                }
                return null;
              },
              obscureText: true);
        });
  }

  /// Section Widget
  Widget _buildPhoneNumber(BuildContext context) {
    return BlocSelector<RegesterPersonBloc, RegesterPersonState,
            TextEditingController?>(
        selector: (state) => state.phoneNumberController,
        builder: (context, phoneNumberController) {
          return CustomTextFormField(
              textAlignVertical:  TextAlignVertical.center,

              controller: phoneNumberController,
              hintText: "lbl_phone_number".en,
              hintStyle: CustomTextStyles.titleSmallBluegray400,
              textInputAction: TextInputAction.done,
              textInputType: TextInputType.phone,
              validator: (value) {
                if (!isValidPhone(value)) {
                  return "err_msg_please_enter_valid_phone_number".en;
                }
                return null;
              });
        });
  }

  /// Section Widget
  Widget _buildCity(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Container(
          margin: EdgeInsets.only(right: 5.h),
          padding: EdgeInsets.symmetric(horizontal: 9.h, vertical: 18.v),
          decoration: AppDecoration.outlineBlueGray
              .copyWith(borderRadius: BorderRadiusStyle.roundedBorder20),
          child: Text("lbl_city".en,
              style: CustomTextStyles.titleSmallBluegray400)),
      Container(
          margin: EdgeInsets.only(left: 5.h),
          padding: EdgeInsets.symmetric(horizontal: 9.h, vertical: 19.v),
          decoration: AppDecoration.outlineBlueGray
              .copyWith(borderRadius: BorderRadiusStyle.roundedBorder20),
          child: Text("lbl_street".en,
              style: CustomTextStyles.titleSmallBluegray400))
    ]);
  }

  /// Section Widget
  Widget _buildFrame(BuildContext context) {
    return GestureDetector(
        onTap: () {
          onTapFrame(context);
        },
        child: Container(
            padding: EdgeInsets.symmetric(horizontal: 117.h, vertical: 23.v),
            decoration: AppDecoration.gradientBluegray900ToPrimary1
                .copyWith(borderRadius: BorderRadiusStyle.circleBorder30),
            child: CustomImageView(
                imagePath: ImageConstant.imgSettings,
                height: 12.v,
                width: 65.h)));
  }

  /// Navigates to the successfullyPersonScreen when the action is triggered.
  onTapFrame(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.successfullyPersonScreen,
    );
  }

  /// Navigates to the loginPersonScreen when the action is triggered.
  onTapImgIAlreadyHaveAn(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.loginPersonScreen,
    );
  }
}
