import 'bloc/loading_page_one_bloc.dart';
import 'models/loading_page_one_model.dart';
import 'package:emad_s_application1/core/app_export.dart';
import 'package:emad_s_application1/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class LoadingPageOneScreen extends StatelessWidget {
  const LoadingPageOneScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<LoadingPageOneBloc>(
        create: (context) => LoadingPageOneBloc(
            LoadingPageOneState(loadingPageOneModelObj: LoadingPageOneModel()))
          ..add(LoadingPageOneInitialEvent()),
        child: LoadingPageOneScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoadingPageOneBloc, LoadingPageOneState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              backgroundColor: appTheme.gray5002,
              body: SizedBox(
                  width: double.maxFinite,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgRectangle552,
                            height: 430.v,
                            width: 360.h),
                        SizedBox(height: 14.v),
                        Container(
                            width: 217.h,
                            margin: EdgeInsets.only(right: 59.h),
                            child: Text("msg7".en,
                                maxLines: 3,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.right,
                                style: theme.textTheme.titleLarge!
                                    .copyWith(height: 1.70))),
                        SizedBox(height: 5.v),
                        Container(
                            width: 221.h,
                            margin: EdgeInsets.only(right: 54.h),
                            child: Text("msg8".en,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.right,
                                style: theme.textTheme.bodyMedium!
                                    .copyWith(height: 1.70)))
                      ])),
              bottomNavigationBar: _buildNinetyNineRow(context)));
    });
  }

  /// Section Widget
  Widget _buildNinetyNineRow(BuildContext context) {
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
              padding: EdgeInsets.all(16.h),
              onTap: () {
                onTapBtnArrowLeft(context);
              },
              child: CustomImageView(imagePath: ImageConstant.imgArrowLeft))
        ]));
  }

  /// Navigates to the loginPersonScreen when the action is triggered.
  onTapBtnArrowLeft(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.loginPersonScreen,
    );
  }
}
