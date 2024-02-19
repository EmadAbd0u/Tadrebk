// ignore_for_file: must_be_immutable

part of 'regester_person_bloc.dart';

/// Represents the state of RegesterPerson in the application.
class RegesterPersonState extends Equatable {
  RegesterPersonState({
    this.firstNameController,
    this.lastNameController,
    this.emailController,
    this.passwordController,
    this.confirmpasswordController,
    this.phoneNumberController,
    this.regesterPersonModelObj,
  });

  TextEditingController? firstNameController;

  TextEditingController? lastNameController;

  TextEditingController? emailController;

  TextEditingController? passwordController;

  TextEditingController? confirmpasswordController;

  TextEditingController? phoneNumberController;

  RegesterPersonModel? regesterPersonModelObj;

  @override
  List<Object?> get props => [
        firstNameController,
        lastNameController,
        emailController,
        passwordController,
        confirmpasswordController,
        phoneNumberController,
        regesterPersonModelObj,
      ];
  RegesterPersonState copyWith({
    TextEditingController? firstNameController,
    TextEditingController? lastNameController,
    TextEditingController? emailController,
    TextEditingController? passwordController,
    TextEditingController? confirmpasswordController,
    TextEditingController? phoneNumberController,
    RegesterPersonModel? regesterPersonModelObj,
  }) {
    return RegesterPersonState(
      firstNameController: firstNameController ?? this.firstNameController,
      lastNameController: lastNameController ?? this.lastNameController,
      emailController: emailController ?? this.emailController,
      passwordController: passwordController ?? this.passwordController,
      confirmpasswordController:
          confirmpasswordController ?? this.confirmpasswordController,
      phoneNumberController:
          phoneNumberController ?? this.phoneNumberController,
      regesterPersonModelObj:
          regesterPersonModelObj ?? this.regesterPersonModelObj,
    );
  }
}
