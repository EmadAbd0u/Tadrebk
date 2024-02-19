// ignore_for_file: must_be_immutable

part of 'android_large_eighteen_bloc.dart';

/// Represents the state of AndroidLargeEighteen in the application.
class AndroidLargeEighteenState extends Equatable {
  AndroidLargeEighteenState({
    this.newpasswordController,
    this.confirmpasswordController,
    this.androidLargeEighteenModelObj,
  });

  TextEditingController? newpasswordController;

  TextEditingController? confirmpasswordController;

  AndroidLargeEighteenModel? androidLargeEighteenModelObj;

  @override
  List<Object?> get props => [
        newpasswordController,
        confirmpasswordController,
        androidLargeEighteenModelObj,
      ];
  AndroidLargeEighteenState copyWith({
    TextEditingController? newpasswordController,
    TextEditingController? confirmpasswordController,
    AndroidLargeEighteenModel? androidLargeEighteenModelObj,
  }) {
    return AndroidLargeEighteenState(
      newpasswordController:
          newpasswordController ?? this.newpasswordController,
      confirmpasswordController:
          confirmpasswordController ?? this.confirmpasswordController,
      androidLargeEighteenModelObj:
          androidLargeEighteenModelObj ?? this.androidLargeEighteenModelObj,
    );
  }
}
