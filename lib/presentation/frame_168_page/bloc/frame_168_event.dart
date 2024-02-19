// ignore_for_file: must_be_immutable

part of 'frame_168_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Frame168 widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class Frame168Event extends Equatable {}

/// Event that is dispatched when the Frame168 widget is first created.
class Frame168InitialEvent extends Frame168Event {
  @override
  List<Object?> get props => [];
}
