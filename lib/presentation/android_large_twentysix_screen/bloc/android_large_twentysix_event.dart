// ignore_for_file: must_be_immutable

part of 'android_large_twentysix_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///AndroidLargeTwentysix widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class AndroidLargeTwentysixEvent extends Equatable {}

/// Event that is dispatched when the AndroidLargeTwentysix widget is first created.
class AndroidLargeTwentysixInitialEvent extends AndroidLargeTwentysixEvent {
  @override
  List<Object?> get props => [];
}
