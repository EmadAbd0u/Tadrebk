// ignore_for_file: must_be_immutable

part of 'login_page_as_company_bloc.dart';

/// Represents the state of LoginPageAsCompany in the application.
class LoginPageAsCompanyState extends Equatable {
  LoginPageAsCompanyState({
    this.emailController,
    this.passwordController,
    this.isShowPassword = true,
    this.loginPageAsCompanyModelObj,
  });

  TextEditingController? emailController;

  TextEditingController? passwordController;

  LoginPageAsCompanyModel? loginPageAsCompanyModelObj;

  bool isShowPassword;

  @override
  List<Object?> get props => [
        emailController,
        passwordController,
        isShowPassword,
        loginPageAsCompanyModelObj,
      ];
  LoginPageAsCompanyState copyWith({
    TextEditingController? emailController,
    TextEditingController? passwordController,
    bool? isShowPassword,
    LoginPageAsCompanyModel? loginPageAsCompanyModelObj,
  }) {
    return LoginPageAsCompanyState(
      emailController: emailController ?? this.emailController,
      passwordController: passwordController ?? this.passwordController,
      isShowPassword: isShowPassword ?? this.isShowPassword,
      loginPageAsCompanyModelObj:
          loginPageAsCompanyModelObj ?? this.loginPageAsCompanyModelObj,
    );
  }
}
