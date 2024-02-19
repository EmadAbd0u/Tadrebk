// ignore_for_file: must_be_immutable

part of 'frame_172_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Frame172 widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class Frame172Event extends Equatable {}

/// Event that is dispatched when the Frame172 widget is first created.
class Frame172InitialEvent extends Frame172Event {
  @override
  List<Object?> get props => [];
}
