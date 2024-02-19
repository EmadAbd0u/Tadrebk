import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:emad_s_application1/presentation/android_large_twentysix_screen/models/android_large_twentysix_model.dart';
part 'android_large_twentysix_event.dart';
part 'android_large_twentysix_state.dart';

/// A bloc that manages the state of a AndroidLargeTwentysix according to the event that is dispatched to it.
class AndroidLargeTwentysixBloc
    extends Bloc<AndroidLargeTwentysixEvent, AndroidLargeTwentysixState> {
  AndroidLargeTwentysixBloc(AndroidLargeTwentysixState initialState)
      : super(initialState) {
    on<AndroidLargeTwentysixInitialEvent>(_onInitialize);
  }

  _onInitialize(
    AndroidLargeTwentysixInitialEvent event,
    Emitter<AndroidLargeTwentysixState> emit,
  ) async {
    emit(state.copyWith(
        nameController: TextEditingController(),
        cityController: TextEditingController(),
        streetController: TextEditingController(),
        enterTrainingSpecializationController: TextEditingController(),
        enterTrainingCostController: TextEditingController(),
        dateController: TextEditingController(),
        dateController1: TextEditingController()));
  }
}
