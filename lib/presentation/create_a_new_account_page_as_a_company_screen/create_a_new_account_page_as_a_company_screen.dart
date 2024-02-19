import 'bloc/create_a_new_account_page_as_a_company_bloc.dart';
import 'models/create_a_new_account_page_as_a_company_model.dart';
import 'package:emad_s_application1/core/app_export.dart';
import 'package:emad_s_application1/core/utils/validation_functions.dart';
import 'package:emad_s_application1/widgets/custom_elevated_button.dart';
import 'package:emad_s_application1/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class CreateANewAccountPageAsACompanyScreen extends StatelessWidget {
  CreateANewAccountPageAsACompanyScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<CreateANewAccountPageAsACompanyBloc>(
        create: (context) => CreateANewAccountPageAsACompanyBloc(
            CreateANewAccountPageAsACompanyState(
                createANewAccountPageAsACompanyModelObj:
                    CreateANewAccountPageAsACompanyModel()))
          ..add(CreateANewAccountPageAsACompanyInitialEvent()),
        child: CreateANewAccountPageAsACompanyScreen());
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
                                horizontal: 29.h, vertical: 49.v),
                            child: Column(children: [
                              SizedBox(height: 48.v),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text("lbl_create_account".en,
                                      style: CustomTextStyles
                                          .headlineLargeGTWalsheimProGray900)),
                              SizedBox(height: 34.v),
                              _buildNameField(context),
                              SizedBox(height: 18.v),
                              _buildEmailField(context),
                              SizedBox(height: 18.v),
                              _buildPasswordField(context),
                              SizedBox(height: 18.v),
                              _buildSpecializationField(context),
                              SizedBox(height: 18.v),
                              _buildLocationField(context),
                              SizedBox(height: 18.v),
                              _buildPhoneNumberField(context),
                              SizedBox(height: 40.v),
                              _buildContinueButton(context),
                              SizedBox(height: 15.v),
                              GestureDetector(
                                  onTap: () {
                                    onTapTxtIalreadyhavean(context);
                                  },
                                  child: RichText(
                                      text: TextSpan(children: [
                                        TextSpan(
                                            text: "msg_i_already_have_an2".en,
                                            style: CustomTextStyles
                                                .bodySmallRobotoff1b3358),
                                        TextSpan(
                                            text: "lbl_account".en,
                                            style: CustomTextStyles
                                                .labelLargeRobotoff1b3358)
                                      ]),
                                      textAlign: TextAlign.left))
                            ])))))));
  }

  /// Section Widget
  Widget _buildNameField(BuildContext context) {
    return BlocSelector<CreateANewAccountPageAsACompanyBloc,
            CreateANewAccountPageAsACompanyState, TextEditingController?>(
        selector: (state) => state.nameFieldController,
        builder: (context, nameFieldController) {
          return CustomTextFormField(
              controller: nameFieldController,
              hintText: "msg_enter_your_company".en,
              hintStyle: CustomTextStyles.titleSmallBluegray400Medium,
              validator: (value) {
                if (!isText(value)) {
                  return "err_msg_please_enter_valid_text".en;
                }
                return null;
              }, textAlignVertical: TextAlignVertical.center,);
        });
  }

  /// Section Widget
  Widget _buildEmailField(BuildContext context) {
    return BlocSelector<CreateANewAccountPageAsACompanyBloc,
            CreateANewAccountPageAsACompanyState, TextEditingController?>(
        selector: (state) => state.emailFieldController,
        builder: (context, emailFieldController) {
          return CustomTextFormField(
              controller: emailFieldController,
              hintText: "lbl_email_address".en,
              hintStyle: CustomTextStyles.titleSmallBluegray400Medium,
              textInputType: TextInputType.emailAddress,
              validator: (value) {
                if (value == null || (!isValidEmail(value, isRequired: true))) {
                  return "err_msg_please_enter_valid_email".en;
                }
                return null;
              }, textAlignVertical:  TextAlignVertical.center,);
        });
  }

  /// Section Widget
  Widget _buildPasswordField(BuildContext context) {
    return BlocSelector<CreateANewAccountPageAsACompanyBloc,
            CreateANewAccountPageAsACompanyState, TextEditingController?>(
        selector: (state) => state.passwordFieldController,
        builder: (context, passwordFieldController) {
          return CustomTextFormField(

              controller: passwordFieldController,
              textAlignVertical: TextAlignVertical.center,
              hintText: "lbl_password".en,
              hintStyle: CustomTextStyles.titleSmallBluegray400Medium,
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
  Widget _buildSpecializationField(BuildContext context) {
    return BlocSelector<CreateANewAccountPageAsACompanyBloc,
            CreateANewAccountPageAsACompanyState, TextEditingController?>(
        selector: (state) => state.specializationFieldController,
        builder: (context, specializationFieldController) {
          return CustomTextFormField(
              textAlignVertical:  TextAlignVertical.center,
              controller: specializationFieldController,
              hintText: "lbl_specialization".en,
              hintStyle: CustomTextStyles.titleSmallBluegray400Medium);
        });
  }

  /// Section Widget
  Widget _buildLocationField(BuildContext context) {
    return BlocSelector<CreateANewAccountPageAsACompanyBloc,
            CreateANewAccountPageAsACompanyState, TextEditingController?>(
        selector: (state) => state.locationFieldController,
        builder: (context, locationFieldController) {
          return CustomTextFormField(
              controller: locationFieldController,
              hintText: "lbl_location".en,
              hintStyle: CustomTextStyles.titleSmallBluegray400Medium, textAlignVertical:  TextAlignVertical.center,);
        });
  }

  /// Section Widget
  Widget _buildPhoneNumberField(BuildContext context) {
    return BlocSelector<CreateANewAccountPageAsACompanyBloc,
            CreateANewAccountPageAsACompanyState, TextEditingController?>(
        selector: (state) => state.phoneNumberFieldController,
        builder: (context, phoneNumberFieldController) {
          return CustomTextFormField(
              textAlignVertical:  TextAlignVertical.center,
              controller: phoneNumberFieldController,
              hintText: "lbl_phone_number".en,
              hintStyle: CustomTextStyles.titleSmallBluegray400Medium,
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
  Widget _buildContinueButton(BuildContext context) {
    return CustomElevatedButton(
        text: "lbl_continue".en,
        buttonStyle: CustomButtonStyles.none,
        decoration: CustomButtonStyles.gradientBlueGrayToPrimaryTL30Decoration,
        buttonTextStyle: CustomTextStyles.titleMediumOnPrimarySemiBold,
        onPressed: () {
          onTapContinueButton(context);
        });
  }

  /// Navigates to the createANewAccountPageAsAPersonScreen when the action is triggered.
  onTapContinueButton(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.createANewAccountPageAsAPersonScreen,
    );
  }

  /// Navigates to the loginPageAsCompanyScreen when the action is triggered.
  onTapTxtIalreadyhavean(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.loginPageAsCompanyScreen,
    );
  }
}
