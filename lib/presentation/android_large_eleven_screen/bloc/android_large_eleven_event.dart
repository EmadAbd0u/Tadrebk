// ignore_for_file: must_be_immutable

part of 'android_large_eleven_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///AndroidLargeEleven widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class AndroidLargeElevenEvent extends Equatable {}

/// Event that is dispatched when the AndroidLargeEleven widget is first created.
class AndroidLargeElevenInitialEvent extends AndroidLargeElevenEvent {
  @override
  List<Object?> get props => [];
}
