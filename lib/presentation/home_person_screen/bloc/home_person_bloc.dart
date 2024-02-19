import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/userprofilelist_item_model.dart';
import 'package:emad_s_application1/presentation/home_person_screen/models/home_person_model.dart';
part 'home_person_event.dart';
part 'home_person_state.dart';

/// A bloc that manages the state of a HomePerson according to the event that is dispatched to it.
class HomePersonBloc extends Bloc<HomePersonEvent, HomePersonState> {
  HomePersonBloc(HomePersonState initialState) : super(initialState) {
    on<HomePersonInitialEvent>(_onInitialize);
  }

  List<UserprofilelistItemModel> fillUserprofilelistItemList() {
    return [
      UserprofilelistItemModel(
          constructionImage: ImageConstant.imgRectangle232,
          groupImage: ImageConstant.imgGroup3925x25,
          constructionText: "Al Abd Construction",
          locationText: "Cairo ,Talat Harb Street",
          reviewsText: "80 Reviews",
          priceText: "Training Price ",
          priceValue: "180L.E"),
      UserprofilelistItemModel(
          constructionImage: ImageConstant.imgRectangle231,
          groupImage: ImageConstant.imgGroup3925x25,
          constructionText: "Al Abd Construction",
          locationText: "Cairo ,Talat Harb Street",
          reviewsText: "80 Reviews",
          priceText: "Training Price ",
          priceValue: "180L.E")
    ];
  }

  _onInitialize(
    HomePersonInitialEvent event,
    Emitter<HomePersonState> emit,
  ) async {
    emit(state.copyWith(searchController: TextEditingController()));
    emit(state.copyWith(
        homePersonModelObj: state.homePersonModelObj?.copyWith(
            userprofilelistItemList: fillUserprofilelistItemList())));
  }
}
