import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:emad_s_application1/presentation/settings_page_light_dialog/models/settings_page_light_model.dart';
part 'settings_page_light_event.dart';
part 'settings_page_light_state.dart';

/// A bloc that manages the state of a SettingsPageLight according to the event that is dispatched to it.
class SettingsPageLightBloc
    extends Bloc<SettingsPageLightEvent, SettingsPageLightState> {
  SettingsPageLightBloc(SettingsPageLightState initialState)
      : super(initialState) {
    on<SettingsPageLightInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SettingsPageLightInitialEvent event,
    Emitter<SettingsPageLightState> emit,
  ) async {}
}
