// android_large_three_state.dart
// ... (import statements)

import 'package:emad_s_application1/presentation/onboardind_screen_tow/models/android_large_three_model.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';


@immutable
class AndroidLargeThreeState extends Equatable {
  AndroidLargeThreeState({this.androidLargeThreeModelObj, this.currentIndex});

  final AndroidLargeThreeModel? androidLargeThreeModelObj;
  final int? currentIndex;

  @override
  List<Object?> get props => [
    androidLargeThreeModelObj,
    currentIndex,
  ];

  AndroidLargeThreeState copyWith({
    AndroidLargeThreeModel? androidLargeThreeModelObj,
    int? currentIndex,
  }) {
    return AndroidLargeThreeState(
      androidLargeThreeModelObj:
      androidLargeThreeModelObj ?? this.androidLargeThreeModelObj,
      currentIndex: currentIndex ?? this.currentIndex,
    );
  }
}