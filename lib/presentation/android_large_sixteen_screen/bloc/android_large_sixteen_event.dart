// ignore_for_file: must_be_immutable

part of 'android_large_sixteen_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///AndroidLargeSixteen widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class AndroidLargeSixteenEvent extends Equatable {}

/// Event that is dispatched when the AndroidLargeSixteen widget is first created.
class AndroidLargeSixteenInitialEvent extends AndroidLargeSixteenEvent {
  @override
  List<Object?> get props => [];
}
