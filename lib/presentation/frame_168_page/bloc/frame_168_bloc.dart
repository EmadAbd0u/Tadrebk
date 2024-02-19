import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/userprofile_item_model.dart';
import 'package:emad_s_application1/presentation/frame_168_page/models/frame_168_model.dart';
part 'frame_168_event.dart';
part 'frame_168_state.dart';

/// A bloc that manages the state of a Frame168 according to the event that is dispatched to it.
class Frame168Bloc extends Bloc<Frame168Event, Frame168State> {
  Frame168Bloc(Frame168State initialState) : super(initialState) {
    on<Frame168InitialEvent>(_onInitialize);
  }

  _onInitialize(
    Frame168InitialEvent event,
    Emitter<Frame168State> emit,
  ) async {
    emit(state.copyWith(
        frame168ModelObj: state.frame168ModelObj?.copyWith(
      userprofileItemList: fillUserprofileItemList(),
    )));
  }

  List<UserprofileItemModel> fillUserprofileItemList() {
    return [
      UserprofileItemModel(
          companyName: "Al Abd Contracting",
          acceptanceMessage: "He was accepted into Al-Abd Contracting Company"),
      UserprofileItemModel(
          companyName: "Al Abd Contracting",
          acceptanceMessage: "He was accepted into Al-Abd Contracting Company"),
      UserprofileItemModel(
          companyName: "Al Abd Contracting",
          acceptanceMessage: "He was accepted into Al-Abd Contracting Company")
    ];
  }
}
