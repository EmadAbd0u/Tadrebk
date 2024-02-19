// ignore_for_file: must_be_immutable

part of 'android_large_nineteen_bloc.dart';

/// Represents the state of AndroidLargeNineteen in the application.
class AndroidLargeNineteenState extends Equatable {
  AndroidLargeNineteenState({this.androidLargeNineteenModelObj});

  AndroidLargeNineteenModel? androidLargeNineteenModelObj;

  @override
  List<Object?> get props => [
        androidLargeNineteenModelObj,
      ];
  AndroidLargeNineteenState copyWith(
      {AndroidLargeNineteenModel? androidLargeNineteenModelObj}) {
    return AndroidLargeNineteenState(
      androidLargeNineteenModelObj:
          androidLargeNineteenModelObj ?? this.androidLargeNineteenModelObj,
    );
  }
}
