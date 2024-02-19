import 'package:emad_s_application1/presentation/splash_screens/models/android_large_one_model.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
part 'android_large_one_event.dart';
part 'android_large_one_state.dart';

/// A bloc that manages the state of a AndroidLargeOne according to the event that is dispatched to it.
class AndroidLargeOneBloc
    extends Bloc<AndroidLargeOneEvent, SplashScreensState> {
  AndroidLargeOneBloc(SplashScreensState initialState) : super(initialState) {
    on<AndroidLargeOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    AndroidLargeOneInitialEvent event,
    Emitter<SplashScreensState> emit,
  ) async {
    Future.delayed(const Duration(milliseconds: 2000), () {

      NavigatorService.pushNamed(AppRoutes.onboardindScreenOne);
    });
  }
}
