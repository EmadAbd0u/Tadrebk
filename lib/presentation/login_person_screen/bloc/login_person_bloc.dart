import 'package:emad_s_application1/presentation/login_person_screen/models/login_person_model.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'login_person_event.dart';
import 'login_person_state.dart';

/// A bloc that manages the state of a LoginPerson according to the event that is dispatched to it.
// ignore_for_file: must_be_immutable

class LoginPersonBloc extends Bloc<LoginPersonEvent, LoginPersonState> {
  LoginPersonBloc(LoginPersonState initialState) : super(initialState) {
    on<LoginPersonInitialEvent>(_onInitialize);
    on<ChangePasswordVisibilityEvent>(_changePasswordVisibility);
    on<TogglePasswordVisibilityEvent>(_togglePasswordVisibility);
    on<LoginPersonSubmitEvent>(_submitLogin);
  }

  _changePasswordVisibility(ChangePasswordVisibilityEvent event,
      Emitter<LoginPersonState> emit,) {
    emit(state.copyWith(
      isShowPassword: event.value,
    ));
  }

  _togglePasswordVisibility(TogglePasswordVisibilityEvent event,
      Emitter<LoginPersonState> emit,) {
    emit(state.copyWith(
      isShowPassword: !state.isShowPassword,
    ));
  }

  _onInitialize(LoginPersonInitialEvent event,
      Emitter<LoginPersonState> emit,) {
    emit(state.copyWith(
      emailController: TextEditingController(),
      passwordController: TextEditingController(),
      isShowPassword: false,
    ));
  }

  _submitLogin(LoginPersonSubmitEvent event,
      Emitter<LoginPersonState> emit,) async {
    if (_validateForm()) {
      // Add logic to handle login, e.g., API calls
      // For simplicity, let's assume login is successful
      emit(state.copyWith(
        loginPersonModelObj: LoginPersonModel(), // Update with actual login result
      ));
    }
  }

  bool _validateForm() {
    final email = state.emailController?.text;
    final password = state.passwordController?.text;

    if (email == null || email.isEmpty) {
      // يمكنك إرجاع رسالة خطأ أو القيام بإجراء آخر
      return false;
    }

    if (password == null || password.isEmpty) {
      // يمكنك إرجاع رسالة خطأ أو القيام بإجراء آخر
      return false;
    }

    // يمكنك إضافة قواعد إضافية حسب احتياجاتك هنا

    return true; // تمر البيانات التحقق من صحتها
  }

}