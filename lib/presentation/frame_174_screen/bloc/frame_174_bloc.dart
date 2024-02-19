import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/userprofile4_item_model.dart';
import 'package:emad_s_application1/presentation/frame_174_screen/models/frame_174_model.dart';
part 'frame_174_event.dart';
part 'frame_174_state.dart';

/// A bloc that manages the state of a Frame174 according to the event that is dispatched to it.
class Frame174Bloc extends Bloc<Frame174Event, Frame174State> {
  Frame174Bloc(Frame174State initialState) : super(initialState) {
    on<Frame174InitialEvent>(_onInitialize);
  }

  _onInitialize(
    Frame174InitialEvent event,
    Emitter<Frame174State> emit,
  ) async {
    emit(state.copyWith(
        frame174ModelObj: state.frame174ModelObj
            ?.copyWith(userprofile4ItemList: fillUserprofile4ItemList())));
  }

  List<Userprofile4ItemModel> fillUserprofile4ItemList() {
    return [
      Userprofile4ItemModel(
          userName: "Yousef Sayed",
          requestText: "Request to apply for this training",
          locationText: "Cairo,Talat Harb Street,Egypt ",
          acceptText: "Accept",
          rejectText: "Reject",
          viewProfileText: "View Profile"),
      Userprofile4ItemModel(
          userName: "Yousef Sayed",
          requestText: "Request to apply for this training",
          locationText: "Cairo,Talat Harb Street,Egypt ",
          acceptText: "Accept",
          rejectText: "Reject",
          viewProfileText: "View Profile"),
      Userprofile4ItemModel(
          userName: "Yousef Sayed",
          requestText: "Request to apply for this training",
          locationText: "Cairo,Talat Harb Street,Egypt ",
          acceptText: "Accept",
          rejectText: "Reject",
          viewProfileText: "View Profile"),
      Userprofile4ItemModel(
          userName: "Yousef Sayed",
          requestText: "Request to apply for this training",
          locationText: "Cairo,Talat Harb Street,Egypt ",
          acceptText: "Accept",
          rejectText: "Reject",
          viewProfileText: "View Profile"),
      Userprofile4ItemModel(
          userName: "Yousef Sayed",
          requestText: "Request to apply for this training",
          locationText: "Cairo,Talat Harb Street,Egypt ",
          acceptText: "Accept",
          rejectText: "Reject",
          viewProfileText: "View Profile")
    ];
  }
}
