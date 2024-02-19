// ignore_for_file: must_be_immutable

part of 'android_large_six_container_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///AndroidLargeSixContainer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class AndroidLargeSixContainerEvent extends Equatable {}

/// Event that is dispatched when the AndroidLargeSixContainer widget is first created.
class AndroidLargeSixContainerInitialEvent
    extends AndroidLargeSixContainerEvent {
  @override
  List<Object?> get props => [];
}
