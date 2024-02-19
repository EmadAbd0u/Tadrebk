import 'package:emad_s_application1/presentation/onboardind_screen_one/models/android_large_twentyfour_model.dart';
import 'bloc/android_large_twentyfour_bloc.dart';
import 'package:emad_s_application1/core/app_export.dart';
import 'package:emad_s_application1/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';



class OnBoardingScreenOne extends StatelessWidget {
  const OnBoardingScreenOne.OnBoardingScreenOne({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<AndroidLargeTwentyfourBloc>(
        create: (context) => AndroidLargeTwentyfourBloc(
            AndroidLargeTwentyfourState(
                androidLargeTwentyfourModelObj: OnboardindScreenOneModel()))
          ..add(OnboardindScreenOneInitialEvent()),
        child: OnBoardingScreenOne.OnBoardingScreenOne());



  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AndroidLargeTwentyfourBloc, AndroidLargeTwentyfourState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              backgroundColor: appTheme.gray5002,
              body: Column(
                children: [
                  SizedBox(
                      width: double.maxFinite,
                      child: Column(
                          children: [
                        CustomImageView(
                          ///man------------
                            imagePath: ImageConstant.imgRectangle55,
                            height: 430.v,
                            width: 360.h),
                        SizedBox(height: 31.v),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: SizedBox(
                              width: 400.h,
                              child: Text("msgT1".ar,
                                  maxLines: 3,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: theme.textTheme.titleLarge!
                                      .copyWith(height: 1.70))),
                        ),
                        SizedBox(height: 4.v),
                        Text("msgB1".ar, style: theme.textTheme.bodyMedium),
                        SizedBox(height: 5.v)
                      ])),
                ],
              ),
              bottomNavigationBar: _buildPagerIndicatorRow(context)));
    });
  }

  /// Section Widget
  Widget _buildPagerIndicatorRow(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 16.h, right: 22.h, bottom: 39.v),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
              Container(
              height: 10.v,
              margin: EdgeInsets.symmetric(vertical: 26.v),
              child: AnimatedSmoothIndicator(
                  activeIndex: 0,
                  count: 3,
                  effect: ScrollingDotsEffect(
                      spacing: 8,
                      activeDotColor: appTheme.indigo70001,
                      dotColor: appTheme.blueGray100,
                      dotHeight: 10.v,
                      dotWidth: 10.h))),

             CustomIconButton(
              height: 62.adaptSize,
              width: 62.adaptSize,
              onTap: () {
                onTapBtnArrowLeft(context);
              },
              child: Center(
                child: Icon(Icons.arrow_forward_ios,
                  color: Colors.white,
                  size: 40.0,

                ),
              ))
        ]));
  }

  /// Navigates to the androidLargeThreeScreen when the action is triggered.
  onTapBtnArrowLeft(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.onboardindScreenTow,
    );

  }

}
