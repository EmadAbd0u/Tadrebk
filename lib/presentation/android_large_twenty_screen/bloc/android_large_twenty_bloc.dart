import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:emad_s_application1/presentation/android_large_twenty_screen/models/android_large_twenty_model.dart';
import 'package:sms_autofill/sms_autofill.dart';
part 'android_large_twenty_event.dart';
part 'android_large_twenty_state.dart';

/// A bloc that manages the state of a AndroidLargeTwenty according to the event that is dispatched to it.
class AndroidLargeTwentyBloc
    extends Bloc<AndroidLargeTwentyEvent, AndroidLargeTwentyState>
    with CodeAutoFill {
  AndroidLargeTwentyBloc(AndroidLargeTwentyState initialState)
      : super(initialState) {
    on<AndroidLargeTwentyInitialEvent>(_onInitialize);
    on<ChangeOTPEvent>(_changeOTP);
  }

  @override
  codeUpdated() {
    add(ChangeOTPEvent(code: code!));
  }

  _changeOTP(
    ChangeOTPEvent event,
    Emitter<AndroidLargeTwentyState> emit,
  ) {
    emit(
        state.copyWith(otpController: TextEditingController(text: event.code)));
  }

  _onInitialize(
    AndroidLargeTwentyInitialEvent event,
    Emitter<AndroidLargeTwentyState> emit,
  ) async {
    emit(state.copyWith(otpController: TextEditingController()));
    listenForCode();
  }
}
