import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:emad_s_application1/presentation/regester_person_screen/models/regester_person_model.dart';
part 'regester_person_event.dart';
part 'regester_person_state.dart';

/// A bloc that manages the state of a RegesterPerson according to the event that is dispatched to it.
class RegesterPersonBloc
    extends Bloc<RegesterPersonEvent, RegesterPersonState> {
  RegesterPersonBloc(RegesterPersonState initialState) : super(initialState) {
    on<RegesterPersonInitialEvent>(_onInitialize);
  }

  _onInitialize(
    RegesterPersonInitialEvent event,
    Emitter<RegesterPersonState> emit,
  ) async {
    emit(state.copyWith(
        firstNameController: TextEditingController(),
        lastNameController: TextEditingController(),
        emailController: TextEditingController(),
        passwordController: TextEditingController(),
        confirmpasswordController: TextEditingController(),
        phoneNumberController: TextEditingController()));
  }
}
