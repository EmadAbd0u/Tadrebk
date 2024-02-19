import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/userprofile1_item_model.dart';
import 'package:emad_s_application1/presentation/training_classification_screen/models/training_classification_model.dart';
part 'training_classification_event.dart';
part 'training_classification_state.dart';

/// A bloc that manages the state of a TrainingClassification according to the event that is dispatched to it.
class TrainingClassificationBloc
    extends Bloc<TrainingClassificationEvent, TrainingClassificationState> {
  TrainingClassificationBloc(TrainingClassificationState initialState)
      : super(initialState) {
    on<TrainingClassificationInitialEvent>(_onInitialize);
  }

  _onInitialize(
    TrainingClassificationInitialEvent event,
    Emitter<TrainingClassificationState> emit,
  ) async {
    emit(state.copyWith(
        trainingClassificationModelObj: state.trainingClassificationModelObj
            ?.copyWith(userprofile1ItemList: fillUserprofile1ItemList())));
  }

  List<Userprofile1ItemModel> fillUserprofile1ItemList() {
    return [
      Userprofile1ItemModel(
          companyName: "Vodafone",
          trainingText: "Price Training ",
          locationText: "Cairo ,Talat Harb Street",
          reviewsText: "80 Reviews",
          priceText: "180L.E"),
      Userprofile1ItemModel(
          companyName: "Vodafone",
          trainingText: "Price Training ",
          locationText: "Cairo ,Talat Harb Street",
          reviewsText: "80 Reviews",
          priceText: "180L.E"),
      Userprofile1ItemModel(
          companyName: "Vodafone",
          trainingText: "Price Training ",
          locationText: "Cairo ,Talat Harb Street",
          reviewsText: "80 Reviews",
          priceText: "180L.E")
    ];
  }
}
