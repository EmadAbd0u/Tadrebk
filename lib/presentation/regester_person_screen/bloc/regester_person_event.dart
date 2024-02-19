// ignore_for_file: must_be_immutable

part of 'regester_person_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///RegesterPerson widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class RegesterPersonEvent extends Equatable {}

/// Event that is dispatched when the RegesterPerson widget is first created.
class RegesterPersonInitialEvent extends RegesterPersonEvent {
  @override
  List<Object?> get props => [];
}
