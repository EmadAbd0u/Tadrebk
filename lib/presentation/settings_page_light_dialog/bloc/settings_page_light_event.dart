// ignore_for_file: must_be_immutable

part of 'settings_page_light_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SettingsPageLight widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SettingsPageLightEvent extends Equatable {}

/// Event that is dispatched when the SettingsPageLight widget is first created.
class SettingsPageLightInitialEvent extends SettingsPageLightEvent {
  @override
  List<Object?> get props => [];
}
