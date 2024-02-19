// ignore_for_file: must_be_immutable

part of 'frame_173_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Frame173 widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class Frame173Event extends Equatable {}

/// Event that is dispatched when the Frame173 widget is first created.
class Frame173InitialEvent extends Frame173Event {
  @override
  List<Object?> get props => [];
}
