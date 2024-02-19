// ignore_for_file: must_be_immutable

part of 'login_page_as_company_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///LoginPageAsCompany widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class LoginPageAsCompanyEvent extends Equatable {}

/// Event that is dispatched when the LoginPageAsCompany widget is first created.
class LoginPageAsCompanyInitialEvent extends LoginPageAsCompanyEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing password visibility
class ChangePasswordVisibilityEvent extends LoginPageAsCompanyEvent {
  ChangePasswordVisibilityEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
