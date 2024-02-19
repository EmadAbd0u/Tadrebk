// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

/// This class defines the variables used in the [login_person_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class LoginPersonModel extends Equatable {
  LoginPersonModel() {}

  LoginPersonModel copyWith() {
    return LoginPersonModel();
  }

  @override
  List<Object?> get props => [];
}
