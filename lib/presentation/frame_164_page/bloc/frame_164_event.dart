// ignore_for_file: must_be_immutable

part of 'frame_164_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Frame164 widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class Frame164Event extends Equatable {}

/// Event that is dispatched when the Frame164 widget is first created.
class Frame164InitialEvent extends Frame164Event {
  @override
  List<Object?> get props => [];
}
