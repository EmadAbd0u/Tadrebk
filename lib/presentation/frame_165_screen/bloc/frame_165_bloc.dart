import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:emad_s_application1/presentation/frame_165_screen/models/frame_165_model.dart';
part 'frame_165_event.dart';
part 'frame_165_state.dart';

/// A bloc that manages the state of a Frame165 according to the event that is dispatched to it.
class Frame165Bloc extends Bloc<Frame165Event, Frame165State> {
  Frame165Bloc(Frame165State initialState) : super(initialState) {
    on<Frame165InitialEvent>(_onInitialize);
    on<ChangeSwitchEvent>(_changeSwitch);
  }

  _changeSwitch(
    ChangeSwitchEvent event,
    Emitter<Frame165State> emit,
  ) {
    emit(state.copyWith(
      isSelectedSwitch: event.value,
    ));
  }

  _onInitialize(
    Frame165InitialEvent event,
    Emitter<Frame165State> emit,
  ) async {
    emit(state.copyWith(
      isSelectedSwitch: false,
    ));
  }
}
