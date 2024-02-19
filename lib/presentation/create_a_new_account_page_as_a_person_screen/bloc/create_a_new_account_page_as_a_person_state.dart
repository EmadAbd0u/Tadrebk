// ignore_for_file: must_be_immutable

part of 'create_a_new_account_page_as_a_person_bloc.dart';

/// Represents the state of CreateANewAccountPageAsAPerson in the application.
class CreateANewAccountPageAsAPersonState extends Equatable {
  CreateANewAccountPageAsAPersonState(
      {this.createANewAccountPageAsAPersonModelObj});

  CreateANewAccountPageAsAPersonModel? createANewAccountPageAsAPersonModelObj;

  @override
  List<Object?> get props => [
        createANewAccountPageAsAPersonModelObj,
      ];
  CreateANewAccountPageAsAPersonState copyWith(
      {CreateANewAccountPageAsAPersonModel?
          createANewAccountPageAsAPersonModelObj}) {
    return CreateANewAccountPageAsAPersonState(
      createANewAccountPageAsAPersonModelObj:
          createANewAccountPageAsAPersonModelObj ??
              this.createANewAccountPageAsAPersonModelObj,
    );
  }
}
