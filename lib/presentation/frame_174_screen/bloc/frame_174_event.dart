// ignore_for_file: must_be_immutable

part of 'frame_174_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Frame174 widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class Frame174Event extends Equatable {}

/// Event that is dispatched when the Frame174 widget is first created.
class Frame174InitialEvent extends Frame174Event {
  @override
  List<Object?> get props => [];
}
