// ignore_for_file: must_be_immutable

part of 'home_person_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///HomePerson widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class HomePersonEvent extends Equatable {}

/// Event that is dispatched when the HomePerson widget is first created.
class HomePersonInitialEvent extends HomePersonEvent {
  @override
  List<Object?> get props => [];
}
