// ignore_for_file: must_be_immutable

part of 'create_a_new_account_page_as_a_company_bloc.dart';

/// Represents the state of CreateANewAccountPageAsACompany in the application.
class CreateANewAccountPageAsACompanyState extends Equatable {
  CreateANewAccountPageAsACompanyState({
    this.nameFieldController,
    this.emailFieldController,
    this.passwordFieldController,
    this.specializationFieldController,
    this.locationFieldController,
    this.phoneNumberFieldController,
    this.createANewAccountPageAsACompanyModelObj,
  });

  TextEditingController? nameFieldController;

  TextEditingController? emailFieldController;

  TextEditingController? passwordFieldController;

  TextEditingController? specializationFieldController;

  TextEditingController? locationFieldController;

  TextEditingController? phoneNumberFieldController;

  CreateANewAccountPageAsACompanyModel? createANewAccountPageAsACompanyModelObj;

  @override
  List<Object?> get props => [
        nameFieldController,
        emailFieldController,
        passwordFieldController,
        specializationFieldController,
        locationFieldController,
        phoneNumberFieldController,
        createANewAccountPageAsACompanyModelObj,
      ];
  CreateANewAccountPageAsACompanyState copyWith({
    TextEditingController? nameFieldController,
    TextEditingController? emailFieldController,
    TextEditingController? passwordFieldController,
    TextEditingController? specializationFieldController,
    TextEditingController? locationFieldController,
    TextEditingController? phoneNumberFieldController,
    CreateANewAccountPageAsACompanyModel?
        createANewAccountPageAsACompanyModelObj,
  }) {
    return CreateANewAccountPageAsACompanyState(
      nameFieldController: nameFieldController ?? this.nameFieldController,
      emailFieldController: emailFieldController ?? this.emailFieldController,
      passwordFieldController:
          passwordFieldController ?? this.passwordFieldController,
      specializationFieldController:
          specializationFieldController ?? this.specializationFieldController,
      locationFieldController:
          locationFieldController ?? this.locationFieldController,
      phoneNumberFieldController:
          phoneNumberFieldController ?? this.phoneNumberFieldController,
      createANewAccountPageAsACompanyModelObj:
          createANewAccountPageAsACompanyModelObj ??
              this.createANewAccountPageAsACompanyModelObj,
    );
  }
}
