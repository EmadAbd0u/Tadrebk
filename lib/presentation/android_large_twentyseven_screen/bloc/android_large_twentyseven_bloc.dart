import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:emad_s_application1/presentation/android_large_twentyseven_screen/models/android_large_twentyseven_model.dart';
part 'android_large_twentyseven_event.dart';
part 'android_large_twentyseven_state.dart';

/// A bloc that manages the state of a AndroidLargeTwentyseven according to the event that is dispatched to it.
class AndroidLargeTwentysevenBloc
    extends Bloc<AndroidLargeTwentysevenEvent, AndroidLargeTwentysevenState> {
  AndroidLargeTwentysevenBloc(AndroidLargeTwentysevenState initialState)
      : super(initialState) {
    on<AndroidLargeTwentysevenInitialEvent>(_onInitialize);
    on<ChangeSwitchEvent>(_changeSwitch);
  }

  _changeSwitch(
    ChangeSwitchEvent event,
    Emitter<AndroidLargeTwentysevenState> emit,
  ) {
    emit(state.copyWith(
      isSelectedSwitch: event.value,
    ));
  }

  _onInitialize(
    AndroidLargeTwentysevenInitialEvent event,
    Emitter<AndroidLargeTwentysevenState> emit,
  ) async {
    emit(state.copyWith(
      isSelectedSwitch: false,
    ));
  }
}
