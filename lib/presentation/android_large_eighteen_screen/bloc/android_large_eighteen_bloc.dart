import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:emad_s_application1/presentation/android_large_eighteen_screen/models/android_large_eighteen_model.dart';
part 'android_large_eighteen_event.dart';
part 'android_large_eighteen_state.dart';

/// A bloc that manages the state of a AndroidLargeEighteen according to the event that is dispatched to it.
class AndroidLargeEighteenBloc
    extends Bloc<AndroidLargeEighteenEvent, AndroidLargeEighteenState> {
  AndroidLargeEighteenBloc(AndroidLargeEighteenState initialState)
      : super(initialState) {
    on<AndroidLargeEighteenInitialEvent>(_onInitialize);
  }

  _onInitialize(
    AndroidLargeEighteenInitialEvent event,
    Emitter<AndroidLargeEighteenState> emit,
  ) async {
    emit(state.copyWith(
        newpasswordController: TextEditingController(),
        confirmpasswordController: TextEditingController()));
  }
}
