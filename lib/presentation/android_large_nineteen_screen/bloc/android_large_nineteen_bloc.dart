import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:emad_s_application1/presentation/android_large_nineteen_screen/models/android_large_nineteen_model.dart';
part 'android_large_nineteen_event.dart';
part 'android_large_nineteen_state.dart';

/// A bloc that manages the state of a AndroidLargeNineteen according to the event that is dispatched to it.
class AndroidLargeNineteenBloc
    extends Bloc<AndroidLargeNineteenEvent, AndroidLargeNineteenState> {
  AndroidLargeNineteenBloc(AndroidLargeNineteenState initialState)
      : super(initialState) {
    on<AndroidLargeNineteenInitialEvent>(_onInitialize);
  }

  _onInitialize(
    AndroidLargeNineteenInitialEvent event,
    Emitter<AndroidLargeNineteenState> emit,
  ) async {}
}
