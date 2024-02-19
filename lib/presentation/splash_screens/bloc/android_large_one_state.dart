// ignore_for_file: must_be_immutable

part of 'android_large_one_bloc.dart';

/// Represents the state of AndroidLargeOne in the application.
class SplashScreensState extends Equatable {
  SplashScreensState({this.SplashScreensModelObj});

  AndroidLargeOneModel? SplashScreensModelObj;

  @override
  List<Object?> get props => [
    SplashScreensModelObj,
      ];
  SplashScreensState copyWith(
      {AndroidLargeOneModel? androidLargeOneModelObj}) {
    return SplashScreensState(
      SplashScreensModelObj:
          androidLargeOneModelObj ?? this.SplashScreensModelObj,
    );
  }
}
