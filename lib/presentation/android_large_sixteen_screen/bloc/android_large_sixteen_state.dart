// ignore_for_file: must_be_immutable

part of 'android_large_sixteen_bloc.dart';

/// Represents the state of AndroidLargeSixteen in the application.
class AndroidLargeSixteenState extends Equatable {
  AndroidLargeSixteenState({
    this.phoneNumberController,
    this.androidLargeSixteenModelObj,
  });

  TextEditingController? phoneNumberController;

  AndroidLargeSixteenModel? androidLargeSixteenModelObj;

  @override
  List<Object?> get props => [
        phoneNumberController,
        androidLargeSixteenModelObj,
      ];
  AndroidLargeSixteenState copyWith({
    TextEditingController? phoneNumberController,
    AndroidLargeSixteenModel? androidLargeSixteenModelObj,
  }) {
    return AndroidLargeSixteenState(
      phoneNumberController:
          phoneNumberController ?? this.phoneNumberController,
      androidLargeSixteenModelObj:
          androidLargeSixteenModelObj ?? this.androidLargeSixteenModelObj,
    );
  }
}
