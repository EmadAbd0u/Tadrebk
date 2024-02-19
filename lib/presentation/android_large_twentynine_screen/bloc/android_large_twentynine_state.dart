// ignore_for_file: must_be_immutable

part of 'android_large_twentynine_bloc.dart';

/// Represents the state of AndroidLargeTwentynine in the application.
class AndroidLargeTwentynineState extends Equatable {
  AndroidLargeTwentynineState({this.androidLargeTwentynineModelObj});

  AndroidLargeTwentynineModel? androidLargeTwentynineModelObj;

  @override
  List<Object?> get props => [
        androidLargeTwentynineModelObj,
      ];
  AndroidLargeTwentynineState copyWith(
      {AndroidLargeTwentynineModel? androidLargeTwentynineModelObj}) {
    return AndroidLargeTwentynineState(
      androidLargeTwentynineModelObj:
          androidLargeTwentynineModelObj ?? this.androidLargeTwentynineModelObj,
    );
  }
}
