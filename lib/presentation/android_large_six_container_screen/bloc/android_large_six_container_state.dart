// ignore_for_file: must_be_immutable

part of 'android_large_six_container_bloc.dart';

/// Represents the state of AndroidLargeSixContainer in the application.
class AndroidLargeSixContainerState extends Equatable {
  AndroidLargeSixContainerState({this.androidLargeSixContainerModelObj});

  AndroidLargeSixContainerModel? androidLargeSixContainerModelObj;

  @override
  List<Object?> get props => [
        androidLargeSixContainerModelObj,
      ];
  AndroidLargeSixContainerState copyWith(
      {AndroidLargeSixContainerModel? androidLargeSixContainerModelObj}) {
    return AndroidLargeSixContainerState(
      androidLargeSixContainerModelObj: androidLargeSixContainerModelObj ??
          this.androidLargeSixContainerModelObj,
    );
  }
}
