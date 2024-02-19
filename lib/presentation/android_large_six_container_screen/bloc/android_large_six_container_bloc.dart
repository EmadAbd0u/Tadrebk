import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:emad_s_application1/presentation/android_large_six_container_screen/models/android_large_six_container_model.dart';
part 'android_large_six_container_event.dart';
part 'android_large_six_container_state.dart';

/// A bloc that manages the state of a AndroidLargeSixContainer according to the event that is dispatched to it.
class AndroidLargeSixContainerBloc
    extends Bloc<AndroidLargeSixContainerEvent, AndroidLargeSixContainerState> {
  AndroidLargeSixContainerBloc(AndroidLargeSixContainerState initialState)
      : super(initialState) {
    on<AndroidLargeSixContainerInitialEvent>(_onInitialize);
  }

  _onInitialize(
    AndroidLargeSixContainerInitialEvent event,
    Emitter<AndroidLargeSixContainerState> emit,
  ) async {}
}
