import 'bloc/android_large_three_bloc.dart';
import 'bloc/android_large_three_state.dart';
import 'models/android_large_three_model.dart';
import 'package:emad_s_application1/core/app_export.dart';
import 'package:emad_s_application1/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreenTow extends StatelessWidget {
  int currentIndex = 0;

   OnBoardingScreenTow({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<AndroidLargeThreeBloc>(
      create: (context) => AndroidLargeThreeBloc(AndroidLargeThreeState(
        androidLargeThreeModelObj: AndroidLargeThreeModel(),
      ))..add(AndroidLargeThreeInitialEvent()),
      child: OnBoardingScreenTow(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AndroidLargeThreeBloc, AndroidLargeThreeState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: appTheme.gray5002,
            body: SizedBox(
              width: double.maxFinite,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  SizedBox(
                    height: 430.v,
                    width: double.maxFinite,
                    child: Stack(
                      alignment: Alignment.topCenter,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgRectangle551,
                          height: 430.v,
                          width: 360.h,
                          alignment: Alignment.center,
                        ),
                        Align(
                          alignment: Alignment.topCenter,
                          child: Padding(
                            padding: EdgeInsets.only(top: 120.v),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Container(
                                  width: 66.h,
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 5.h,
                                    vertical: 2.v,
                                  ),
                                  decoration: AppDecoration.outlineBlack.copyWith(
                                    borderRadius: BorderRadiusStyle.circleBorder6,
                                  ),
                                  child: Text(
                                    "search.....".en,
                                    style: CustomTextStyles.kanitBlack900,
                                  ),
                                ),
                                Container(
                                  height: 12.adaptSize,
                                  width: 12.adaptSize,
                                  margin: EdgeInsets.only(left: 3.h),
                                  padding: EdgeInsets.all(2.h),
                                  decoration: AppDecoration.gradientBluegray900ToPrimary.copyWith(
                                    borderRadius: BorderRadiusStyle.circleBorder6,
                                  ),
                                  child: CustomImageView(
                                    imagePath: ImageConstant.imgGroup28,
                                    height: 7.adaptSize,
                                    width: 7.adaptSize,
                                    alignment: Alignment.center,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Container(
                      width: 400.h,
                      child: Text(
                        "msgT2".ar,
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: theme.textTheme.titleLarge!.copyWith(height: 1.70),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text(
                      "msgB2".ar,
                      maxLines: 5,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: theme.textTheme.bodyMedium!.copyWith(height: 1.70),
                    ),
                  ),
                  SizedBox(height: 5.v),
                ],
              ),
            ),
            bottomNavigationBar: _buildPagerIndicator(context),
          ),
        );
      },
    );
  }

  Widget _buildPagerIndicator(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 16.h, right: 23.h, bottom: 39.v),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 10.v,
            margin: EdgeInsets.symmetric(vertical: 26.v),
            child: AnimatedSmoothIndicator(
              activeIndex: currentIndex,
              count: 3,
              effect: ScrollingDotsEffect(
                spacing: 8,
                activeDotColor: appTheme.indigo70001,
                dotColor: appTheme.blueGray100,
                dotHeight: 10.v,
                dotWidth: 10.h,
              ),
            ),
          ),
          CustomIconButton(
            height: 62.adaptSize,
            width: 62.adaptSize,
            onTap: () {
              onTapBtnArrowLeft(context);
            },
            child: Center(
              child: Icon(
                Icons.arrow_forward_ios,
                color: Colors.white,
                size: 40.0,
              ),
            ),
          ),
        ],
      ),
    );
  }

  void onTapBtnArrowLeft(BuildContext context) {
    currentIndex++;
    if (currentIndex > 2) {
      currentIndex = 2;
    }
    NavigatorService.pushNamed(
      AppRoutes.onboardindScreenThree,
    );
  }
}
