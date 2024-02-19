// ignore_for_file: must_be_immutable

part of 'android_large_twentyeight_bloc.dart';

/// Represents the state of AndroidLargeTwentyeight in the application.
class AndroidLargeTwentyeightState extends Equatable {
  AndroidLargeTwentyeightState({this.androidLargeTwentyeightModelObj});

  AndroidLargeTwentyeightModel? androidLargeTwentyeightModelObj;

  @override
  List<Object?> get props => [
        androidLargeTwentyeightModelObj,
      ];
  AndroidLargeTwentyeightState copyWith(
      {AndroidLargeTwentyeightModel? androidLargeTwentyeightModelObj}) {
    return AndroidLargeTwentyeightState(
      androidLargeTwentyeightModelObj: androidLargeTwentyeightModelObj ??
          this.androidLargeTwentyeightModelObj,
    );
  }
}
