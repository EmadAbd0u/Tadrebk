// ignore_for_file: must_be_immutable

part of 'frame_167_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Frame167 widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class Frame167Event extends Equatable {}

/// Event that is dispatched when the Frame167 widget is first created.
class Frame167InitialEvent extends Frame167Event {
  @override
  List<Object?> get props => [];
}
