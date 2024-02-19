import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:emad_s_application1/presentation/android_large_twentyeight_screen/models/android_large_twentyeight_model.dart';
part 'android_large_twentyeight_event.dart';
part 'android_large_twentyeight_state.dart';

/// A bloc that manages the state of a AndroidLargeTwentyeight according to the event that is dispatched to it.
class AndroidLargeTwentyeightBloc
    extends Bloc<AndroidLargeTwentyeightEvent, AndroidLargeTwentyeightState> {
  AndroidLargeTwentyeightBloc(AndroidLargeTwentyeightState initialState)
      : super(initialState) {
    on<AndroidLargeTwentyeightInitialEvent>(_onInitialize);
  }

  _onInitialize(
    AndroidLargeTwentyeightInitialEvent event,
    Emitter<AndroidLargeTwentyeightState> emit,
  ) async {}
}
