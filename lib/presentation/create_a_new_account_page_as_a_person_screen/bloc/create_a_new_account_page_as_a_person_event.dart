// ignore_for_file: must_be_immutable

part of 'create_a_new_account_page_as_a_person_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///CreateANewAccountPageAsAPerson widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class CreateANewAccountPageAsAPersonEvent extends Equatable {}

/// Event that is dispatched when the CreateANewAccountPageAsAPerson widget is first created.
class CreateANewAccountPageAsAPersonInitialEvent
    extends CreateANewAccountPageAsAPersonEvent {
  @override
  List<Object?> get props => [];
}
