// android_large_twentyfour_bloc.dart

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '/core/app_export.dart';
import 'package:emad_s_application1/presentation/onboardind_screen_one/models/android_large_twentyfour_model.dart';

part 'android_large_twentyfour_event.dart';
part 'android_large_twentyfour_state.dart';

class AndroidLargeTwentyfourBloc
    extends Bloc<OnboardindScreenOneEvent, AndroidLargeTwentyfourState> {
  AndroidLargeTwentyfourBloc(AndroidLargeTwentyfourState initialState)
      : super(initialState) {
    on<OnboardindScreenOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
      OnboardindScreenOneEvent event,
      Emitter<AndroidLargeTwentyfourState> emit,
      ) async {}
}
