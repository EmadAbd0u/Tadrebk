import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:emad_s_application1/presentation/successfully_person_screen/models/successfully_person_model.dart';
part 'successfully_person_event.dart';
part 'successfully_person_state.dart';

/// A bloc that manages the state of a SuccessfullyPerson according to the event that is dispatched to it.
class SuccessfullyPersonBloc
    extends Bloc<SuccessfullyPersonEvent, SuccessfullyPersonState> {
  SuccessfullyPersonBloc(SuccessfullyPersonState initialState)
      : super(initialState) {
    on<SuccessfullyPersonInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SuccessfullyPersonInitialEvent event,
    Emitter<SuccessfullyPersonState> emit,
  ) async {}
}
