// ignore_for_file: must_be_immutable

part of 'android_large_twentyseven_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///AndroidLargeTwentyseven widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class AndroidLargeTwentysevenEvent extends Equatable {}

/// Event that is dispatched when the AndroidLargeTwentyseven widget is first created.
class AndroidLargeTwentysevenInitialEvent extends AndroidLargeTwentysevenEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing switch
class ChangeSwitchEvent extends AndroidLargeTwentysevenEvent {
  ChangeSwitchEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
