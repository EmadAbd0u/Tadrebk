import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:emad_s_application1/presentation/frame_173_screen/models/frame_173_model.dart';
part 'frame_173_event.dart';
part 'frame_173_state.dart';

/// A bloc that manages the state of a Frame173 according to the event that is dispatched to it.
class Frame173Bloc extends Bloc<Frame173Event, Frame173State> {
  Frame173Bloc(Frame173State initialState) : super(initialState) {
    on<Frame173InitialEvent>(_onInitialize);
  }

  _onInitialize(
    Frame173InitialEvent event,
    Emitter<Frame173State> emit,
  ) async {}
}
