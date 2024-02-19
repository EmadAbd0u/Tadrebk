import 'bloc/android_large_one_bloc.dart';
import 'models/android_large_one_model.dart';
import 'package:emad_s_application1/core/app_export.dart';
import 'package:flutter/material.dart';

///................splash
///
class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<AndroidLargeOneBloc>(
        create: (context) => AndroidLargeOneBloc(SplashScreensState(
            SplashScreensModelObj: AndroidLargeOneModel()))
          ..add(AndroidLargeOneInitialEvent()),
        child: SplashScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AndroidLargeOneBloc, SplashScreensState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              extendBody: true,
              extendBodyBehindAppBar: true,
              body: Container(
                  width: SizeUtils.width,
                  height: SizeUtils.height,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment(0, 0),
                          end: Alignment(1, 1),
                          colors: [
                        appTheme.blueGray900,
                        theme.colorScheme.primary,
                        theme.colorScheme.primary
                      ])),
                  child: Container(
                      width: double.maxFinite,
                      padding: EdgeInsets.symmetric(horizontal: 30.h),
                      child: CustomImageView(
                          imagePath: ImageConstant.imgRectangle3,
                          height: 300.adaptSize,
                          width: 300.adaptSize,
                          alignment: Alignment.center)))));
    });
  }
}
