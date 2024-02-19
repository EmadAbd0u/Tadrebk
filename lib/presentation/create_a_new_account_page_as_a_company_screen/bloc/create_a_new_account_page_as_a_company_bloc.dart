import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:emad_s_application1/presentation/create_a_new_account_page_as_a_company_screen/models/create_a_new_account_page_as_a_company_model.dart';
part 'create_a_new_account_page_as_a_company_event.dart';
part 'create_a_new_account_page_as_a_company_state.dart';

/// A bloc that manages the state of a CreateANewAccountPageAsACompany according to the event that is dispatched to it.
class CreateANewAccountPageAsACompanyBloc extends Bloc<
    CreateANewAccountPageAsACompanyEvent,
    CreateANewAccountPageAsACompanyState> {
  CreateANewAccountPageAsACompanyBloc(
      CreateANewAccountPageAsACompanyState initialState)
      : super(initialState) {
    on<CreateANewAccountPageAsACompanyInitialEvent>(_onInitialize);
  }

  _onInitialize(
    CreateANewAccountPageAsACompanyInitialEvent event,
    Emitter<CreateANewAccountPageAsACompanyState> emit,
  ) async {
    emit(state.copyWith(
        nameFieldController: TextEditingController(),
        emailFieldController: TextEditingController(),
        passwordFieldController: TextEditingController(),
        specializationFieldController: TextEditingController(),
        locationFieldController: TextEditingController(),
        phoneNumberFieldController: TextEditingController()));
  }
}
