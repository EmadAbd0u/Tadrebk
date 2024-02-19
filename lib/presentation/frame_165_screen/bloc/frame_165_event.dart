// ignore_for_file: must_be_immutable

part of 'frame_165_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Frame165 widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class Frame165Event extends Equatable {}

/// Event that is dispatched when the Frame165 widget is first created.
class Frame165InitialEvent extends Frame165Event {
  @override
  List<Object?> get props => [];
}

///Event for changing switch
class ChangeSwitchEvent extends Frame165Event {
  ChangeSwitchEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
