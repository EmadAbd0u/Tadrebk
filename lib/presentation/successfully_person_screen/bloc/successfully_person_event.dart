// ignore_for_file: must_be_immutable

part of 'successfully_person_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SuccessfullyPerson widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SuccessfullyPersonEvent extends Equatable {}

/// Event that is dispatched when the SuccessfullyPerson widget is first created.
class SuccessfullyPersonInitialEvent extends SuccessfullyPersonEvent {
  @override
  List<Object?> get props => [];
}
