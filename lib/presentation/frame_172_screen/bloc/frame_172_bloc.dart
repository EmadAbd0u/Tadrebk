import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:emad_s_application1/presentation/frame_172_screen/models/frame_172_model.dart';
part 'frame_172_event.dart';
part 'frame_172_state.dart';

/// A bloc that manages the state of a Frame172 according to the event that is dispatched to it.
class Frame172Bloc extends Bloc<Frame172Event, Frame172State> {
  Frame172Bloc(Frame172State initialState) : super(initialState) {
    on<Frame172InitialEvent>(_onInitialize);
  }

  _onInitialize(
    Frame172InitialEvent event,
    Emitter<Frame172State> emit,
  ) async {
    emit(state.copyWith(
        nameController: TextEditingController(),
        expirydateController: TextEditingController()));
  }
}
