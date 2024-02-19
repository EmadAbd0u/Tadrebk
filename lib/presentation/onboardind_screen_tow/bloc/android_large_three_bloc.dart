import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:emad_s_application1/core/app_export.dart';
import 'package:emad_s_application1/presentation/onboardind_screen_tow/models/android_large_three_model.dart';

import 'android_large_three_state.dart';

part 'android_large_three_event.dart';

class AndroidLargeThreeBloc
    extends Bloc<AndroidLargeThreeEvent, AndroidLargeThreeState> {
  AndroidLargeThreeBloc(AndroidLargeThreeState initialState)
      : super(initialState) {
    on<AndroidLargeThreeInitialEvent>(_onInitialize);
    on<AndroidLargeThreeNextEvent>(_onNext);
  }

  _onInitialize(
      AndroidLargeThreeInitialEvent event,
      Emitter<AndroidLargeThreeState> emit,
      ) async {}

  _onNext(
      AndroidLargeThreeNextEvent event,
      Emitter<AndroidLargeThreeState> emit,
      ) async {
    final currentIndex = event.currentIndex;
    emit(state.copyWith(
      androidLargeThreeModelObj: state.androidLargeThreeModelObj,
      currentIndex: currentIndex,
    ));
  }
}