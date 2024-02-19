import 'bloc/login_page_as_company_bloc.dart';
import 'models/login_page_as_company_model.dart';
import 'package:emad_s_application1/core/app_export.dart';
import 'package:emad_s_application1/core/utils/validation_functions.dart';
import 'package:emad_s_application1/widgets/custom_elevated_button.dart';
import 'package:emad_s_application1/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class LoginPageAsCompanyScreen extends StatelessWidget {
  LoginPageAsCompanyScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<LoginPageAsCompanyBloc>(
        create: (context) => LoginPageAsCompanyBloc(LoginPageAsCompanyState(
            loginPageAsCompanyModelObj: LoginPageAsCompanyModel()))
          ..add(LoginPageAsCompanyInitialEvent()),
        child: LoginPageAsCompanyScreen());
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
                        child: SizedBox(
                            width: double.maxFinite,
                            child: Column(children: [
                              _buildLoginPageAsCompanyStack(context),
                              SizedBox(height: 30.v),
                              Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 30.h),
                                  child: BlocSelector<
                                          LoginPageAsCompanyBloc,
                                          LoginPageAsCompanyState,
                                          TextEditingController?>(
                                      selector: (state) =>
                                          state.emailController,
                                      builder: (context, emailController) {
                                        return CustomTextFormField(
                                            textAlignVertical:  TextAlignVertical.center,

                                            controller: emailController,
                                            hintText: "lbl_email_address".en,
                                            textInputType:
                                                TextInputType.emailAddress,
                                            prefix: Container(
                                                margin: EdgeInsets.fromLTRB(
                                                    14.h, 17.v, 12.h, 17.v),
                                                child: CustomImageView(
                                                    imagePath:
                                                        ImageConstant.imgLock,
                                                    height: 15.v,
                                                    width: 18.h)),
                                            prefixConstraints:
                                                BoxConstraints(maxHeight: 50.v),
                                            validator: (value) {
                                              if (value == null ||
                                                  (!isValidEmail(value,
                                                      isRequired: true))) {
                                                return "err_msg_please_enter_valid_email"
                                                    .en;
                                              }
                                              return null;
                                            },
                                            contentPadding: EdgeInsets.only(
                                                top: 15.v,
                                                right: 30.h,
                                                bottom: 15.v));
                                      })),
                              SizedBox(height: 10.v),
                              Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 30.h),
                                  child: BlocBuilder<LoginPageAsCompanyBloc,
                                          LoginPageAsCompanyState>(
                                      builder: (context, state) {
                                    return CustomTextFormField(
                                        textAlignVertical:  TextAlignVertical.center,

                                        controller: state.passwordController,
                                        hintText: "lbl_password".en,
                                        textInputAction: TextInputAction.done,
                                        textInputType:
                                            TextInputType.visiblePassword,
                                        prefix: Container(
                                            margin: EdgeInsets.fromLTRB(
                                                11.h, 12.v, 14.h, 13.v),
                                            child: CustomImageView(
                                                imagePath:
                                                    ImageConstant.imgGroup27,
                                                height: 25.adaptSize,
                                                width: 25.adaptSize)),
                                        prefixConstraints:
                                            BoxConstraints(maxHeight: 50.v),
                                        suffix: InkWell(
                                            onTap: () {
                                              context
                                                  .read<
                                                      LoginPageAsCompanyBloc>()
                                                  .add(
                                                      ChangePasswordVisibilityEvent(
                                                          value: !state
                                                              .isShowPassword));
                                            },
                                            child: Container(
                                                margin: EdgeInsets.fromLTRB(
                                                    30.h, 12.v, 15.h, 13.v),
                                                child: CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgGroup26,
                                                    height: 25.adaptSize,
                                                    width: 25.adaptSize))),
                                        suffixConstraints:
                                            BoxConstraints(maxHeight: 50.v),
                                        validator: (value) {
                                          if (value == null ||
                                              (!isValidPassword(value,
                                                  isRequired: true))) {
                                            return "err_msg_please_enter_valid_password"
                                                .en;
                                          }
                                          return null;
                                        },
                                        obscureText: state.isShowPassword,
                                        contentPadding: EdgeInsets.symmetric(
                                            vertical: 15.v));
                                  })),
                              SizedBox(height: 5.v),
                              Align(
                                  alignment: Alignment.centerRight,
                                  child: Padding(
                                      padding: EdgeInsets.only(right: 45.h),
                                      child: Text("msg_forget_password".en,
                                          style: CustomTextStyles
                                              .labelLargeIstokWebGray900))),
                              SizedBox(height: 15.v),
                              CustomElevatedButton(
                                  text: "lbl_log_in".en,
                                  margin:
                                      EdgeInsets.symmetric(horizontal: 30.h),
                                  buttonStyle:
                                      CustomButtonStyles.outlinePrimary,
                                  onPressed: () {
                                    onTapLogIn(context);
                                  }),
                              SizedBox(height: 19.v),
                              SizedBox(
                                  height: 14.v,
                                  width: 184.h,
                                  child: Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        Align(
                                            alignment: Alignment.center,
                                            child: GestureDetector(
                                                onTap: () {
                                                  onTapTxtDonthaveanaccount(
                                                      context);
                                                },
                                                child: RichText(
                                                    text: TextSpan(children: [
                                                      TextSpan(
                                                          text:
                                                              "msg_dont_have_an_account2"
                                                                  .en,
                                                          style: CustomTextStyles
                                                              .bodySmallGTWalsheimProff272727),
                                                      TextSpan(
                                                          text: "lbl_create_one"
                                                              .en,
                                                          style: CustomTextStyles
                                                              .labelLargeGTWalsheimProff272727)
                                                    ]),
                                                    textAlign:
                                                        TextAlign.left))),
                                        Align(
                                            alignment: Alignment.center,
                                            child: RichText(
                                                text: TextSpan(children: [
                                                  TextSpan(
                                                      text:
                                                          "msg_dont_have_an_account2"
                                                              .en,
                                                      style: CustomTextStyles
                                                          .bodySmallGTWalsheimProff272727),
                                                  TextSpan(
                                                      text: "lbl_create_one".en,
                                                      style: CustomTextStyles
                                                          .labelLargeGTWalsheimProff272727)
                                                ]),
                                                textAlign: TextAlign.left))
                                      ])),
                              SizedBox(height: 35.v),
                              CustomImageView(
                                  imagePath: ImageConstant.imgClose,
                                  height: 35.adaptSize,
                                  width: 35.adaptSize),
                              SizedBox(height: 4.v),
                              RichText(
                                  text: TextSpan(children: [
                                    TextSpan(
                                        text: "lbl_log_in".en,
                                        style: CustomTextStyles
                                            .titleMediumff1b3358),
                                    TextSpan(
                                        text: "lbl_as_person".en,
                                        style: CustomTextStyles
                                            .titleMediumff1b3358)
                                  ]),
                                  textAlign: TextAlign.left),
                              SizedBox(height: 5.v)
                            ])))))));
  }

  /// Section Widget
  Widget _buildLoginPageAsCompanyStack(BuildContext context) {
    return SizedBox(
        height: 370.v,
        width: double.maxFinite,
        child: Stack(alignment: Alignment.topCenter, children: [
          CustomImageView(
              imagePath: ImageConstant.imgEllipse2,
              height: 370.v,
              width: 360.h,
              alignment: Alignment.center),
          Align(
              alignment: Alignment.topCenter,
              child: SizedBox(
                  height: 331.v,
                  width: 300.h,
                  child: Stack(alignment: Alignment.bottomLeft, children: [
                    Align(
                        alignment: Alignment.topCenter,
                        child: SizedBox(
                            height: 300.adaptSize,
                            width: 300.adaptSize,
                            child: Stack(
                                alignment: Alignment.bottomCenter,
                                children: [
                                  CustomImageView(
                                      imagePath: ImageConstant.imgRectangle3,
                                      height: 300.adaptSize,
                                      width: 300.adaptSize,
                                      alignment: Alignment.center),
                                  Align(
                                      alignment: Alignment.bottomCenter,
                                      child: Padding(
                                          padding: EdgeInsets.only(bottom: 7.v),
                                          child: Text("lbl_login_as".en,
                                              style: CustomTextStyles
                                                  .headlineLargeOnPrimary)))
                                ]))),
                    Align(
                        alignment: Alignment.bottomLeft,
                        child: Padding(
                            padding: EdgeInsets.only(left: 70.h),
                            child: Text("lbl_company".en,
                                style:
                                    CustomTextStyles.headlineLargeOnPrimary_1)))
                  ])))
        ]));
  }

  /// Navigates to the androidLargeSixContainerScreen when the action is triggered.
  onTapLogIn(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.androidLargeSixContainerScreen,
    );
  }

  /// Navigates to the createANewAccountPageAsACompanyScreen when the action is triggered.
  onTapTxtDonthaveanaccount(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.createANewAccountPageAsACompanyScreen,
    );
  }
}
