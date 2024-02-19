import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/userprofile2_item_model.dart';
import 'package:emad_s_application1/presentation/frame_164_page/models/frame_164_model.dart';
part 'frame_164_event.dart';
part 'frame_164_state.dart';

/// A bloc that manages the state of a Frame164 according to the event that is dispatched to it.
class Frame164Bloc extends Bloc<Frame164Event, Frame164State> {
  Frame164Bloc(Frame164State initialState) : super(initialState) {
    on<Frame164InitialEvent>(_onInitialize);
  }

  _onInitialize(
    Frame164InitialEvent event,
    Emitter<Frame164State> emit,
  ) async {
    emit(state.copyWith(
        frame164ModelObj: state.frame164ModelObj?.copyWith(
      userprofile2ItemList: fillUserprofile2ItemList(),
    )));
  }

  List<Userprofile2ItemModel> fillUserprofile2ItemList() {
    return [
      Userprofile2ItemModel(
          companyName: "Al Abd Contracting",
          acceptanceMessage: "He was accepted into Al-Abd Contracting Company"),
      Userprofile2ItemModel(
          companyName: "Al Abd Contracting",
          acceptanceMessage: "He was accepted into Al-Abd Contracting Company"),
      Userprofile2ItemModel(
          companyName: "Al Abd Contracting",
          acceptanceMessage: "He was accepted into Al-Abd Contracting Company")
    ];
  }
}
