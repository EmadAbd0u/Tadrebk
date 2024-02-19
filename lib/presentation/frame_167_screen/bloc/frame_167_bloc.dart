import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/userprofile3_item_model.dart';
import 'package:emad_s_application1/presentation/frame_167_screen/models/frame_167_model.dart';
part 'frame_167_event.dart';
part 'frame_167_state.dart';

/// A bloc that manages the state of a Frame167 according to the event that is dispatched to it.
class Frame167Bloc extends Bloc<Frame167Event, Frame167State> {
  Frame167Bloc(Frame167State initialState) : super(initialState) {
    on<Frame167InitialEvent>(_onInitialize);
  }

  _onInitialize(
    Frame167InitialEvent event,
    Emitter<Frame167State> emit,
  ) async {
    emit(state.copyWith(
        frame167ModelObj: state.frame167ModelObj?.copyWith(
      userprofile3ItemList: fillUserprofile3ItemList(),
    )));
  }

  List<Userprofile3ItemModel> fillUserprofile3ItemList() {
    return [
      Userprofile3ItemModel(
          constructionImage: ImageConstant.imgRectangle232,
          groupImage: ImageConstant.imgGroup39,
          constructionText: "Al Abd Construction",
          locationText: "Cairo ,Talat Harb Street",
          reviewsText: "80 Reviews",
          priceText: "Training Price ",
          priceValue: "180L.E"),
      Userprofile3ItemModel(
          constructionImage: ImageConstant.imgRectangle233,
          groupImage: ImageConstant.imgGroup39Primary,
          constructionText: "Al Abd Construction",
          locationText: "Cairo ,Talat Harb Street",
          reviewsText: "80 Reviews",
          priceText: "Training Price ",
          priceValue: "180L.E"),
      Userprofile3ItemModel(
          constructionImage: ImageConstant.imgRectangle231,
          constructionText: "Cairo ,Talat Harb Street",
          locationText: "Engineering")
    ];
  }
}
