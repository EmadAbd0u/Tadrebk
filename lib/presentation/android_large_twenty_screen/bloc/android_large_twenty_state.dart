// ignore_for_file: must_be_immutable

part of 'android_large_twenty_bloc.dart';

/// Represents the state of AndroidLargeTwenty in the application.
class AndroidLargeTwentyState extends Equatable {
  AndroidLargeTwentyState({
    this.otpController,
    this.androidLargeTwentyModelObj,
  });

  TextEditingController? otpController;

  AndroidLargeTwentyModel? androidLargeTwentyModelObj;

  @override
  List<Object?> get props => [
        otpController,
        androidLargeTwentyModelObj,
      ];
  AndroidLargeTwentyState copyWith({
    TextEditingController? otpController,
    AndroidLargeTwentyModel? androidLargeTwentyModelObj,
  }) {
    return AndroidLargeTwentyState(
      otpController: otpController ?? this.otpController,
      androidLargeTwentyModelObj:
          androidLargeTwentyModelObj ?? this.androidLargeTwentyModelObj,
    );
  }
}
