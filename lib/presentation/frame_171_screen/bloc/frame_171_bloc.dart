import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:emad_s_application1/presentation/frame_171_screen/models/frame_171_model.dart';
part 'frame_171_event.dart';
part 'frame_171_state.dart';

/// A bloc that manages the state of a Frame171 according to the event that is dispatched to it.
class Frame171Bloc extends Bloc<Frame171Event, Frame171State> {
  Frame171Bloc(Frame171State initialState) : super(initialState) {
    on<Frame171InitialEvent>(_onInitialize);
  }

  _onInitialize(
    Frame171InitialEvent event,
    Emitter<Frame171State> emit,
  ) async {}
}
