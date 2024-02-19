// ignore_for_file: must_be_immutable

part of 'settings_page_light_bloc.dart';

/// Represents the state of SettingsPageLight in the application.
class SettingsPageLightState extends Equatable {
  SettingsPageLightState({this.settingsPageLightModelObj});

  SettingsPageLightModel? settingsPageLightModelObj;

  @override
  List<Object?> get props => [
        settingsPageLightModelObj,
      ];
  SettingsPageLightState copyWith(
      {SettingsPageLightModel? settingsPageLightModelObj}) {
    return SettingsPageLightState(
      settingsPageLightModelObj:
          settingsPageLightModelObj ?? this.settingsPageLightModelObj,
    );
  }
}
