import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:emad_s_application1/presentation/android_large_sixteen_screen/models/android_large_sixteen_model.dart';
part 'android_large_sixteen_event.dart';
part 'android_large_sixteen_state.dart';

/// A bloc that manages the state of a AndroidLargeSixteen according to the event that is dispatched to it.
class AndroidLargeSixteenBloc
    extends Bloc<AndroidLargeSixteenEvent, AndroidLargeSixteenState> {
  AndroidLargeSixteenBloc(AndroidLargeSixteenState initialState)
      : super(initialState) {
    on<AndroidLargeSixteenInitialEvent>(_onInitialize);
  }

  _onInitialize(
    AndroidLargeSixteenInitialEvent event,
    Emitter<AndroidLargeSixteenState> emit,
  ) async {
    emit(state.copyWith(
      phoneNumberController: TextEditingController(),
    ));
  }
}
