// ignore_for_file: must_be_immutable

part of 'android_large_twentyeight_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///AndroidLargeTwentyeight widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class AndroidLargeTwentyeightEvent extends Equatable {}

/// Event that is dispatched when the AndroidLargeTwentyeight widget is first created.
class AndroidLargeTwentyeightInitialEvent extends AndroidLargeTwentyeightEvent {
  @override
  List<Object?> get props => [];
}
