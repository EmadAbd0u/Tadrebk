import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:emad_s_application1/presentation/android_large_twentynine_screen/models/android_large_twentynine_model.dart';
part 'android_large_twentynine_event.dart';
part 'android_large_twentynine_state.dart';

/// A bloc that manages the state of a AndroidLargeTwentynine according to the event that is dispatched to it.
class AndroidLargeTwentynineBloc
    extends Bloc<AndroidLargeTwentynineEvent, AndroidLargeTwentynineState> {
  AndroidLargeTwentynineBloc(AndroidLargeTwentynineState initialState)
      : super(initialState) {
    on<AndroidLargeTwentynineInitialEvent>(_onInitialize);
  }

  _onInitialize(
    AndroidLargeTwentynineInitialEvent event,
    Emitter<AndroidLargeTwentynineState> emit,
  ) async {}
}
