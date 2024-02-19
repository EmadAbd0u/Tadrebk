// ignore_for_file: must_be_immutable

part of 'android_large_eleven_bloc.dart';

/// Represents the state of AndroidLargeEleven in the application.
class AndroidLargeElevenState extends Equatable {
  AndroidLargeElevenState({this.androidLargeElevenModelObj});

  AndroidLargeElevenModel? androidLargeElevenModelObj;

  @override
  List<Object?> get props => [
        androidLargeElevenModelObj,
      ];
  AndroidLargeElevenState copyWith(
      {AndroidLargeElevenModel? androidLargeElevenModelObj}) {
    return AndroidLargeElevenState(
      androidLargeElevenModelObj:
          androidLargeElevenModelObj ?? this.androidLargeElevenModelObj,
    );
  }
}
