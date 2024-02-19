import 'bloc/loading_page_bloc.dart';
import 'models/loading_page_model.dart';
import 'package:emad_s_application1/core/app_export.dart';
import 'package:emad_s_application1/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreenThree extends StatelessWidget {
  const OnBoardingScreenThree({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<LoadingPageBloc>(
        create: (context) => LoadingPageBloc(
            LoadingPageState(loadingPageModelObj: LoadingPageModel()))
          ..add(LoadingPageInitialEvent()),
        child: OnBoardingScreenThree());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoadingPageBloc, LoadingPageState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              backgroundColor: appTheme.gray5002,
              body: SizedBox(
                  width: double.maxFinite,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CustomImageView(
                              imagePath: ImageConstant.imgRectangle553,
                              height: 430.v,
                              width: 360.h),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Text("msgT3".en,
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: theme.textTheme.titleLarge!
                                  .copyWith(height: 1.70)),
                        ),
                        SizedBox(height: 5.v),
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Text("msgB3".en,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: theme.textTheme.bodyMedium!
                                  .copyWith(height: 1.70)),
                        )
                      ])),
              bottomNavigationBar: _buildFiftyFiveRow(context)));
    });
  }

  /// Section Widget
  Widget _buildFiftyFiveRow(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 16.h, right: 23.h, bottom: 38.v),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
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
                    child: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                      size: 40.0,
                    ),
                  ))
        ]));
  }

  /// Navigates to the loginPersonScreen when the action is triggered.
  onTapBtnArrowLeft(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.loginPersonScreen,
    );
  }
}
