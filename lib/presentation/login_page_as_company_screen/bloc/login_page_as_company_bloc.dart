import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:emad_s_application1/presentation/login_page_as_company_screen/models/login_page_as_company_model.dart';
part 'login_page_as_company_event.dart';
part 'login_page_as_company_state.dart';

/// A bloc that manages the state of a LoginPageAsCompany according to the event that is dispatched to it.
class LoginPageAsCompanyBloc
    extends Bloc<LoginPageAsCompanyEvent, LoginPageAsCompanyState> {
  LoginPageAsCompanyBloc(LoginPageAsCompanyState initialState)
      : super(initialState) {
    on<LoginPageAsCompanyInitialEvent>(_onInitialize);
    on<ChangePasswordVisibilityEvent>(_changePasswordVisibility);
  }

  _changePasswordVisibility(
    ChangePasswordVisibilityEvent event,
    Emitter<LoginPageAsCompanyState> emit,
  ) {
    emit(state.copyWith(isShowPassword: event.value));
  }

  _onInitialize(
    LoginPageAsCompanyInitialEvent event,
    Emitter<LoginPageAsCompanyState> emit,
  ) async {
    emit(state.copyWith(
        emailController: TextEditingController(),
        passwordController: TextEditingController(),
        isShowPassword: true));
  }
}
