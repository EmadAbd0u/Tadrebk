// ignore_for_file: must_be_immutable

part of 'android_large_twentyone_bloc.dart';

/// Represents the state of AndroidLargeTwentyone in the application.
class AndroidLargeTwentyoneState extends Equatable {
  AndroidLargeTwentyoneState({this.androidLargeTwentyoneModelObj});

  AndroidLargeTwentyoneModel? androidLargeTwentyoneModelObj;

  @override
  List<Object?> get props => [
        androidLargeTwentyoneModelObj,
      ];
  AndroidLargeTwentyoneState copyWith(
      {AndroidLargeTwentyoneModel? androidLargeTwentyoneModelObj}) {
    return AndroidLargeTwentyoneState(
      androidLargeTwentyoneModelObj:
          androidLargeTwentyoneModelObj ?? this.androidLargeTwentyoneModelObj,
    );
  }
}
