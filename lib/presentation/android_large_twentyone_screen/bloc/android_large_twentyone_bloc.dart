import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:emad_s_application1/presentation/android_large_twentyone_screen/models/android_large_twentyone_model.dart';
part 'android_large_twentyone_event.dart';
part 'android_large_twentyone_state.dart';

/// A bloc that manages the state of a AndroidLargeTwentyone according to the event that is dispatched to it.
class AndroidLargeTwentyoneBloc
    extends Bloc<AndroidLargeTwentyoneEvent, AndroidLargeTwentyoneState> {
  AndroidLargeTwentyoneBloc(AndroidLargeTwentyoneState initialState)
      : super(initialState) {
    on<AndroidLargeTwentyoneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    AndroidLargeTwentyoneInitialEvent event,
    Emitter<AndroidLargeTwentyoneState> emit,
  ) async {}
}
