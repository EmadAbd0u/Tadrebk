import 'bloc/android_large_six_container_bloc.dart';
import 'models/android_large_six_container_model.dart';
import 'package:emad_s_application1/core/app_export.dart';
import 'package:emad_s_application1/presentation/android_large_six_page/android_large_six_page.dart';
import 'package:emad_s_application1/presentation/frame_164_page/frame_164_page.dart';
import 'package:emad_s_application1/presentation/frame_168_page/frame_168_page.dart';
import 'package:emad_s_application1/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class AndroidLargeSixContainerScreen extends StatelessWidget {
  AndroidLargeSixContainerScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<AndroidLargeSixContainerBloc>(
        create: (context) => AndroidLargeSixContainerBloc(
            AndroidLargeSixContainerState(
                androidLargeSixContainerModelObj:
                    AndroidLargeSixContainerModel()))
          ..add(AndroidLargeSixContainerInitialEvent()),
        child: AndroidLargeSixContainerScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AndroidLargeSixContainerBloc,
        AndroidLargeSixContainerState>(builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              body: Navigator(
                  key: navigatorKey,
                  initialRoute: AppRoutes.androidLargeSixPage,
                  onGenerateRoute: (routeSetting) => PageRouteBuilder(
                      pageBuilder: (ctx, ani, ani1) =>
                          getCurrentPage(context, routeSetting.name!),
                      transitionDuration: Duration(seconds: 0))),
              bottomNavigationBar: _buildBottomBar(context)));
    });
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));
    });
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.androidLargeSixPage;
      case BottomBarEnum.Notificattion:
        return AppRoutes.frame168Page;
      case BottomBarEnum.Chatbot:
        return "/";
      case BottomBarEnum.Setting:
        return AppRoutes.frame164Page;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(
    BuildContext context,
    String currentRoute,
  ) {
    switch (currentRoute) {
      case AppRoutes.androidLargeSixPage:
        return AndroidLargeSixPage.builder(context);
      case AppRoutes.frame168Page:
        return Frame168Page.builder(context);
      case AppRoutes.frame164Page:
        return Frame164Page.builder(context);
      default:
        return DefaultWidget();
    }
  }
}
