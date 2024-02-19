// ignore_for_file: must_be_immutable

part of 'android_large_twentyone_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///AndroidLargeTwentyone widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class AndroidLargeTwentyoneEvent extends Equatable {}

/// Event that is dispatched when the AndroidLargeTwentyone widget is first created.
class AndroidLargeTwentyoneInitialEvent extends AndroidLargeTwentyoneEvent {
  @override
  List<Object?> get props => [];
}
