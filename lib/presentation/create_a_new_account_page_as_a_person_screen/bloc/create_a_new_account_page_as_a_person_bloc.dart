import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:emad_s_application1/presentation/create_a_new_account_page_as_a_person_screen/models/create_a_new_account_page_as_a_person_model.dart';
part 'create_a_new_account_page_as_a_person_event.dart';
part 'create_a_new_account_page_as_a_person_state.dart';

/// A bloc that manages the state of a CreateANewAccountPageAsAPerson according to the event that is dispatched to it.
class CreateANewAccountPageAsAPersonBloc extends Bloc<
    CreateANewAccountPageAsAPersonEvent, CreateANewAccountPageAsAPersonState> {
  CreateANewAccountPageAsAPersonBloc(
      CreateANewAccountPageAsAPersonState initialState)
      : super(initialState) {
    on<CreateANewAccountPageAsAPersonInitialEvent>(_onInitialize);
  }

  _onInitialize(
    CreateANewAccountPageAsAPersonInitialEvent event,
    Emitter<CreateANewAccountPageAsAPersonState> emit,
  ) async {}
}
