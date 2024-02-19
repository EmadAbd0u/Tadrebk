// ignore_for_file: must_be_immutable

part of 'android_large_twentynine_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///AndroidLargeTwentynine widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class AndroidLargeTwentynineEvent extends Equatable {}

/// Event that is dispatched when the AndroidLargeTwentynine widget is first created.
class AndroidLargeTwentynineInitialEvent extends AndroidLargeTwentynineEvent {
  @override
  List<Object?> get props => [];
}
