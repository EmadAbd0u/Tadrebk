// ignore_for_file: must_be_immutable

part of 'android_large_eighteen_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///AndroidLargeEighteen widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class AndroidLargeEighteenEvent extends Equatable {}

/// Event that is dispatched when the AndroidLargeEighteen widget is first created.
class AndroidLargeEighteenInitialEvent extends AndroidLargeEighteenEvent {
  @override
  List<Object?> get props => [];
}
