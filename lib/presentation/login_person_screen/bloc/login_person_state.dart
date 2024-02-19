
import 'package:emad_s_application1/presentation/login_person_screen/models/login_person_model.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

@immutable
class LoginPersonState extends Equatable {
  LoginPersonState({
    this.emailController,
    this.passwordController,
    this.isShowPassword = true,
    this.loginPersonModelObj,
  });

  TextEditingController? emailController;

  TextEditingController? passwordController;

  LoginPersonModel? loginPersonModelObj;

  bool isShowPassword;

  FocusNode emailFocusNode = FocusNode();
  FocusNode passwordFocusNode = FocusNode();
  @override
  List<Object?> get props => [
    emailFocusNode,
    passwordFocusNode,
    emailController,
    passwordController,
    isShowPassword,
    loginPersonModelObj,

  ];
  LoginPersonState copyWith({
    TextEditingController? emailController,
    TextEditingController? passwordController,
    bool? isShowPassword,
    LoginPersonModel? loginPersonModelObj,
  }) {
    return LoginPersonState(
      emailController: emailController ?? this.emailController,
      passwordController: passwordController ?? this.passwordController,
      isShowPassword: isShowPassword ?? this.isShowPassword,
      loginPersonModelObj: loginPersonModelObj ?? this.loginPersonModelObj,
    );
  }
}



class LoginSuccessState extends LoginPersonState
{
  // يمكنك إضافة أي معلومات إضافية تحتاجها في حالة الدخول الناجحة
}


