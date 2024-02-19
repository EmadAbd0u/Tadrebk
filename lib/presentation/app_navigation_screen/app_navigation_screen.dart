import 'bloc/app_navigation_bloc.dart';
import 'models/app_navigation_model.dart';
import 'package:emad_s_application1/core/app_export.dart';
import 'package:flutter/material.dart';

class AppNavigationScreen extends StatelessWidget {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<AppNavigationBloc>(
      create: (context) => AppNavigationBloc(AppNavigationState(
        appNavigationModelObj: AppNavigationModel(),
      ))
        ..add(AppNavigationInitialEvent()),
      child: AppNavigationScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppNavigationBloc, AppNavigationState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: Color(0XFFFFFFFF),
            body: SizedBox(
              width: 375.h,
              child: Column(
                children: [
                  _buildAppNavigation(context),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0XFFFFFFFF),
                        ),
                        child: Column(
                          children: [
                            _buildScreenTitle(
                              context,
                              screenTitle: "Android Large - One".en,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.splashScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Android Large - TwentyFour".en,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.onboardindScreenOne),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Android Large - Three".en,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.onboardindScreenTow),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Loading page One".en,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.splashScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Loading page".en,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.onboardindScreenThree),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Login page as Company".en,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.loginPageAsCompanyScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Android Large - Sixteen".en,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.androidLargeSixteenScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Android Large - Twenty".en,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.androidLargeTwentyScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Android Large - Eighteen".en,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.androidLargeEighteenScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Android Large - Nineteen".en,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.androidLargeNineteenScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Login person".en,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.loginPersonScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle:
                                  "Create a new account page as a Company".en,
                              onTapScreenTitle: () => onTapScreenTitle(AppRoutes
                                  .createANewAccountPageAsACompanyScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "regester person".en,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.regesterPersonScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle:
                                  "Create a new account page as a person".en,
                              onTapScreenTitle: () => onTapScreenTitle(AppRoutes
                                  .createANewAccountPageAsAPersonScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "successfully person".en,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.successfullyPersonScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Android Large - TwentyEight".en,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.androidLargeTwentyeightScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Android Large - Six - Container".en,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.androidLargeSixContainerScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Android Large - TwentySix".en,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.androidLargeTwentysixScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Android Large - TwentySeven".en,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.androidLargeTwentysevenScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "chat bot page".en,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.chatBotPageScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "training classification".en,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.trainingClassificationScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Frame 165".en,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.frame165Screen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Frame 167".en,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.frame167Screen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Home person".en,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.homePersonScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Frame 171".en,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.frame171Screen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Android Large - TwentyNine".en,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.androidLargeTwentynineScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Frame 174".en,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.frame174Screen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "chat bot page One".en,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.chatBotPageOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Android Large - Fifteen".en,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.androidLargeFifteenScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Frame 172".en,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.frame172Screen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Frame 173".en,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.frame173Screen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Android Large - TwentyOne".en,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.androidLargeTwentyoneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Android Large - Eleven".en,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.androidLargeElevenScreen),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildAppNavigation(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation".en,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app."
                    .en,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle(
    BuildContext context, {
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(String routeName) {
    NavigatorService.pushNamed(routeName);
  }
}
