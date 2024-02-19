import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';


@immutable
abstract class LoginPersonEvent extends Equatable {}

class LoginPersonInitialEvent extends LoginPersonEvent {
  @override
  List<Object?> get props => [];
}

class ChangePasswordVisibilityEvent extends LoginPersonEvent {
  ChangePasswordVisibilityEvent({required this.value});

  final bool value;

  @override
  List<Object?> get props => [value];
}

class TogglePasswordVisibilityEvent extends LoginPersonEvent {
  @override
  List<Object?> get props => [];
}

class LoginPersonSubmitEvent extends LoginPersonEvent {

  @override
  List<Object?> get props => [];
}

class PasswordTextChangedEvent extends LoginPersonEvent {
  final bool isEmpty;

  PasswordTextChangedEvent({required this.isEmpty});

  @override
  List<Object?> get props => [isEmpty];
}
