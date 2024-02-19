import 'package:emad_s_application1/core/app_export.dart';
import 'package:emad_s_application1/core/utils/validation_functions.dart';
import 'package:emad_s_application1/widgets/custom_elevated_button.dart';
import 'package:emad_s_application1/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'bloc/login_person_bloc.dart';
import 'bloc/login_person_event.dart';
import 'bloc/login_person_state.dart';
import 'models/login_person_model.dart';


class LoginPersonScreen extends StatelessWidget {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<LoginPersonBloc>(
      create: (context) =>
      LoginPersonBloc(LoginPersonState(
        loginPersonModelObj: LoginPersonModel(),
      ))..add(LoginPersonInitialEvent()),
      child: LoginPersonScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: BlocConsumer<LoginPersonBloc, LoginPersonState>(
          listener: (context, state) {
            if (state is LoginSuccessState) {
              // Navigate to the next screen upon successful login
              Navigator.pushReplacementNamed(
                  context, AppRoutes.androidLargeEighteenScreen);
            }
          },
          builder: (context, state) {
            return _buildContent(context, state);
          },
        ),
      ),
    );
  }

  Widget _buildContent(BuildContext context, LoginPersonState state) {
    return SingleChildScrollView(
      padding: EdgeInsets.only(
        bottom: MediaQuery
            .of(context).viewInsets.bottom,
      ),
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            _buildOneSection(context),
            SizedBox(height: 30.v),
            _buildEmailTextField(context),
            SizedBox(height: 10.v),
            _buildPasswordTextField(context),
            SizedBox(height: 6.v),
            Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: EdgeInsets.only(right: 50.h),
                child: Text(
                  "msg_forget_password".en,
                  style: CustomTextStyles.labelLargeGray900,
                ),
              ),
            ),
            SizedBox(height: 17.v),
            CustomElevatedButton(
              text: "lbl_log_in".en,
              margin: EdgeInsets.symmetric(horizontal: 30.h),
              buttonStyle: CustomButtonStyles.none,
              decoration: CustomButtonStyles
                  .gradientBlueGrayToPrimaryDecoration,
              onPressed: ()
              {
                if (_formKey.currentState?.validate() ?? false)
                {
                  context.read<LoginPersonBloc>().add(LoginPersonSubmitEvent());
                  NavigatorService.popAndPushNamed(AppRoutes.androidLargeSixContainerScreen);
                }
              },
            ),
            SizedBox(height: 19.v),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "msg_dont_have_an_account2".en,
                    style: CustomTextStyles.bodySmallGTWalsheimProff272727,
                  ),
                  TextSpan(
                    text: "lbl_create_one".en,
                    style: CustomTextStyles.labelLargeGTWalsheimProff272727,
                  ),
                ],
              ),
              textAlign: TextAlign.left,
            ),
            SizedBox(height: 36.v),
            CustomImageView(
              imagePath: ImageConstant.imgRectangle30,
              height: 35.adaptSize,
              width: 35.adaptSize,
            ),
            SizedBox(height: 2.v),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "lbl_log_in".en,
                    style: CustomTextStyles.titleMediumff1b3358,
                  ),
                  TextSpan(
                    text: "lbl_as_company".en,
                    style: CustomTextStyles.titleMediumff1b3358,
                  ),
                ],
              ),
              textAlign: TextAlign.left,
            ),
            SizedBox(height: 5.v),
          ],
        ),
      ),
    );
  }

  Widget _buildOneSection(BuildContext context) {
    return SizedBox(
      height: 375.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgEllipse1,
            height: 375.v,
            width: 360.h,
            alignment: Alignment.center,
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              height: 329.v,
              width: 300.h,
              margin: EdgeInsets.only(top: 5.v),
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgRectangle3,
                    height: 300.adaptSize,
                    width: 300.adaptSize,
                    alignment: Alignment.topCenter,
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Text(
                      "lbl_person".en,
                      style: CustomTextStyles.headlineLargeOnPrimary_1,
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: EdgeInsets.only(bottom: 37.v),
                      child: Text(
                        "lbl_login_as".en,
                        style: CustomTextStyles.headlineLargeOnPrimary,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _emailIcon(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(13.h, 17.v, 18.h, 17.v),
      child: Icon(
        Icons.email,
        size: 15.v,
        color: Theme
            .of(context)
            .primaryColor,
      ),
    );
  }

  Widget _passwordIcon(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(13.h, 12.v, 15.h, 13.v),
      child: Icon(
        Icons.lock,
        size: 25.adaptSize,
        color: Theme
            .of(context)
            .primaryColor,
      ),
    );
  }

  Widget _eyeIcon(BuildContext context, bool isShowPassword) {
    return Padding(
      padding: EdgeInsets.fromLTRB(13.h, 12.v, 15.h, 13.v),
      child: GestureDetector(
        onTap: () {
          context.read<LoginPersonBloc>().add(TogglePasswordVisibilityEvent());
        },
        child: Icon(
          isShowPassword ? Icons.visibility_off : Icons.visibility,
          size: 25.adaptSize,
          color: Theme
              .of(context)
              .primaryColor,
        ),
      ),
    );
  }

  Widget _buildEmailTextField(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.h),
      child: BlocSelector<LoginPersonBloc,
          LoginPersonState,
          TextEditingController?>(
        selector: (state) => state.emailController,
        builder: (context, emailController) {
          return CustomTextFormField(
            textAlignVertical: TextAlignVertical.center,

            controller: emailController,
            hintText: "lbl_email_address".en,
            textInputType: TextInputType.emailAddress,
            prefix: _emailIcon(context),
            prefixConstraints: BoxConstraints(

              maxHeight: 50.v,
            ),
            validator: (value) {
              if (value == null || !isValidEmail(value, isRequired: true)) {
                return "err_msg_please_enter_valid_email".en;
              }
              return null;
            },
            contentPadding: EdgeInsets.only(
              top: 15.v,
              right: 30.h,
              bottom: 15.v,

            ),
          );
        },
      ),
    );
  }

  Widget _buildPasswordTextField(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.h),
      child: BlocBuilder<LoginPersonBloc, LoginPersonState>(
        builder: (context, state) {
          return CustomTextFormField(
            textAlignVertical: TextAlignVertical.center,
            controller: state.passwordController,
            hintText: "lbl_password".en,
            textInputAction: TextInputAction.done,
            textInputType: TextInputType.visiblePassword,
            prefix: _passwordIcon(context),
            prefixConstraints: BoxConstraints(
              maxHeight: 50.v,
            ),
            suffix: InkWell(
              onTap: () {
                context.read<LoginPersonBloc>().add(
                  ChangePasswordVisibilityEvent(
                    value: !state.isShowPassword,
                  ),
                );
              },
              child: _eyeIcon(context, state.isShowPassword),
            ),
            suffixConstraints: BoxConstraints(
              maxHeight: 50.v,
            ),
            validator: (value) {
              if (value == null || !isValidPassword(value, isRequired: true)) {
                return "err_msg_please_enter_valid_password".en;
              }
              return null;
            },
            obscureText: !state.isShowPassword,
            contentPadding: EdgeInsets.symmetric(vertical: 15.v),
            onChanged: (value) {
              // يتم استدعاء onChanged عند كل تغيير في النص
              // هنا يمكننا التحقق مما إذا كان النص فارغًا أم لا
              context.read<LoginPersonBloc>().add(
                PasswordTextChangedEvent(
                  isEmpty: value.isEmpty,
                ),
              );
            },
          );
        },
      ),
    );
  }
}
