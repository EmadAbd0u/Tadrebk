// ignore_for_file: must_be_immutable

part of 'successfully_person_bloc.dart';

/// Represents the state of SuccessfullyPerson in the application.
class SuccessfullyPersonState extends Equatable {
  SuccessfullyPersonState({this.successfullyPersonModelObj});

  SuccessfullyPersonModel? successfullyPersonModelObj;

  @override
  List<Object?> get props => [
        successfullyPersonModelObj,
      ];
  SuccessfullyPersonState copyWith(
      {SuccessfullyPersonModel? successfullyPersonModelObj}) {
    return SuccessfullyPersonState(
      successfullyPersonModelObj:
          successfullyPersonModelObj ?? this.successfullyPersonModelObj,
    );
  }
}
