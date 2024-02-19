// ignore_for_file: must_be_immutable

part of 'android_large_twentyseven_bloc.dart';

/// Represents the state of AndroidLargeTwentyseven in the application.
class AndroidLargeTwentysevenState extends Equatable {
  AndroidLargeTwentysevenState({
    this.isSelectedSwitch = false,
    this.androidLargeTwentysevenModelObj,
  });

  AndroidLargeTwentysevenModel? androidLargeTwentysevenModelObj;

  bool isSelectedSwitch;

  @override
  List<Object?> get props => [
        isSelectedSwitch,
        androidLargeTwentysevenModelObj,
      ];
  AndroidLargeTwentysevenState copyWith({
    bool? isSelectedSwitch,
    AndroidLargeTwentysevenModel? androidLargeTwentysevenModelObj,
  }) {
    return AndroidLargeTwentysevenState(
      isSelectedSwitch: isSelectedSwitch ?? this.isSelectedSwitch,
      androidLargeTwentysevenModelObj: androidLargeTwentysevenModelObj ??
          this.androidLargeTwentysevenModelObj,
    );
  }
}
