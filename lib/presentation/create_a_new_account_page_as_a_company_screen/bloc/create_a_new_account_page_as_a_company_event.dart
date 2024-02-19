// ignore_for_file: must_be_immutable

part of 'create_a_new_account_page_as_a_company_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///CreateANewAccountPageAsACompany widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class CreateANewAccountPageAsACompanyEvent extends Equatable {}

/// Event that is dispatched when the CreateANewAccountPageAsACompany widget is first created.
class CreateANewAccountPageAsACompanyInitialEvent
    extends CreateANewAccountPageAsACompanyEvent {
  @override
  List<Object?> get props => [];
}
