import '../frame_167_screen/widgets/userprofile3_item_widget.dart';
import 'bloc/frame_167_bloc.dart';
import 'models/frame_167_model.dart';
import 'models/userprofile3_item_model.dart';
import 'package:emad_s_application1/core/app_export.dart';
import 'package:emad_s_application1/presentation/android_large_six_page/android_large_six_page.dart';
import 'package:emad_s_application1/presentation/frame_164_page/frame_164_page.dart';
import 'package:emad_s_application1/presentation/frame_168_page/frame_168_page.dart';
import 'package:emad_s_application1/widgets/app_bar/appbar_leading_image.dart';
import 'package:emad_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:emad_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:emad_s_application1/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;

class Frame167Screen extends StatelessWidget {
  Frame167Screen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<Frame167Bloc>(
      create: (context) => Frame167Bloc(Frame167State(
        frame167ModelObj: Frame167Model(),
      ))
        ..add(Frame167InitialEvent()),
      child: Frame167Screen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 20.v),
          child: Column(
            children: [
              SizedBox(height: 18.v),
              Expanded(
                child: SizedBox(
                  width: double.maxFinite,
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 26.h),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: fs.Svg(
                          ImageConstant.imgGroup164,
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: _buildUserProfile(context),
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomBar(context),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 56.v,
      leadingWidth: 45.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgGroup129Onprimary,
        margin: EdgeInsets.only(
          left: 15.h,
          top: 9.v,
          bottom: 16.v,
        ),
      ),
      title: AppbarTitle(
        text: "lbl_favorites".en,
        margin: EdgeInsets.only(left: 16.h),
      ),
    );
  }

  /// Section Widget
  Widget _buildUserProfile(BuildContext context) {
    return BlocSelector<Frame167Bloc, Frame167State, Frame167Model?>(
      selector: (state) => state.frame167ModelObj,
      builder: (context, frame167ModelObj) {
        return ListView.separated(
          physics: BouncingScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              height: 23.v,
            );
          },
          itemCount: frame167ModelObj?.userprofile3ItemList.length ?? 0,
          itemBuilder: (context, index) {
            Userprofile3ItemModel model =
                frame167ModelObj?.userprofile3ItemList[index] ??
                    Userprofile3ItemModel();
            return Userprofile3ItemWidget(
              model,
            );
          },
        );
      },
    );
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Navigator.pushNamed(
            navigatorKey.currentContext!, getCurrentRoute(type));
      },
    );
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
