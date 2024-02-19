// ignore_for_file: must_be_immutable

part of 'android_large_nineteen_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///AndroidLargeNineteen widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class AndroidLargeNineteenEvent extends Equatable {}

/// Event that is dispatched when the AndroidLargeNineteen widget is first created.
class AndroidLargeNineteenInitialEvent extends AndroidLargeNineteenEvent {
  @override
  List<Object?> get props => [];
}
