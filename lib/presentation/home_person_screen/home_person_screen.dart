import '../home_person_screen/widgets/userprofilelist_item_widget.dart';
import 'bloc/home_person_bloc.dart';
import 'models/home_person_model.dart';
import 'models/userprofilelist_item_model.dart';
import 'package:emad_s_application1/core/app_export.dart';
import 'package:emad_s_application1/presentation/android_large_six_page/android_large_six_page.dart';
import 'package:emad_s_application1/presentation/frame_164_page/frame_164_page.dart';
import 'package:emad_s_application1/presentation/frame_168_page/frame_168_page.dart';
import 'package:emad_s_application1/widgets/app_bar/appbar_leading_image.dart';
import 'package:emad_s_application1/widgets/app_bar/appbar_title_image.dart';
import 'package:emad_s_application1/widgets/app_bar/appbar_trailing_circleimage_one.dart';
import 'package:emad_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:emad_s_application1/widgets/custom_bottom_bar.dart';
import 'package:emad_s_application1/widgets/custom_icon_button.dart';
import 'package:emad_s_application1/widgets/custom_search_view.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class HomePersonScreen extends StatelessWidget {
  HomePersonScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<HomePersonBloc>(
        create: (context) => HomePersonBloc(
            HomePersonState(homePersonModelObj: HomePersonModel()))
          ..add(HomePersonInitialEvent()),
        child: HomePersonScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: double.maxFinite,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 11.v),
                      _buildSearchRow(context),
                      SizedBox(height: 14.v),
                      Padding(
                          padding: EdgeInsets.only(left: 16.h),
                          child: Text("msg_training_classification".en,
                              style: CustomTextStyles
                                  .titleSmallRobotoBluegray900)),
                      SizedBox(height: 8.v),
                      _buildHorizontalScroll(context),
                      SizedBox(height: 20.v),
                      Padding(
                          padding: EdgeInsets.only(left: 16.h),
                          child: Text("msg_general_training".en,
                              style: CustomTextStyles
                                  .titleSmallRobotoBluegray900)),
                      SizedBox(height: 15.v),
                      _buildUserProfileList(context)
                    ])),
            bottomNavigationBar: _buildBottomBar(context)));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 81.v,
        leadingWidth: 41.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgGroup2,
            margin: EdgeInsets.only(left: 16.h, top: 28.v, bottom: 28.v),
            onTap: () {
              onTapImage(context);
            }),
        centerTitle: true,
        title: AppbarTitleImage(imagePath: ImageConstant.imgRectangle34),
        actions: [
          AppbarTrailingCircleimageOne(
              imagePath: ImageConstant.imgPersonHomePage40x40,
              margin: EdgeInsets.fromLTRB(16.h, 21.v, 16.h, 20.v))
        ],
        styleType: Style.bgGradientnamebluegray900nameprimary_1);
  }

  /// Section Widget
  Widget _buildSearchRow(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.h),
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Expanded(
                  child: BlocSelector<HomePersonBloc, HomePersonState,
                          TextEditingController?>(
                      selector: (state) => state.searchController,
                      builder: (context, searchController) {
                        return CustomSearchView(
                            controller: searchController,
                            hintText: "lbl_search2".en);
                      })),
              Padding(
                  padding: EdgeInsets.only(left: 14.h),
                  child: CustomIconButton(
                      height: 50.adaptSize,
                      width: 50.adaptSize,
                      padding: EdgeInsets.all(10.h),
                      decoration:
                          IconButtonStyleHelper.gradientBlueGrayToPrimary,
                      child:
                          CustomImageView(imagePath: ImageConstant.imgGroup28)))
            ])));
  }

  /// Section Widget
  Widget _buildHorizontalScroll(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.only(left: 16.h),
        child: IntrinsicWidth(
            child: SizedBox(
                height: 44.v,
                width: 344.h,
                child: Stack(alignment: Alignment.centerLeft, children: [
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                          height: 44.v,
                          width: 323.h,
                          decoration: BoxDecoration())),
                  Padding(
                      padding: EdgeInsets.only(right: 214.h),
                      child: _buildThirtyOneRow(context,
                          userImage: ImageConstant.imgRectangle21,
                          contractingText: "lbl_programming_56".en,
                          onTapThirtyOneRow: () {
                        onTapThirtyOneRow(context);
                      })),
                  Padding(
                      padding: EdgeInsets.only(left: 137.h, right: 77.h),
                      child: _buildThirtyOneRow(context,
                          userImage: ImageConstant.imgRectangle21,
                          contractingText: "lbl_conracting_25k".en)),
                  Align(
                      alignment: Alignment.centerRight,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            _buildThirtyOneRow(context,
                                userImage: ImageConstant.imgRectangle2137x38,
                                contractingText: "lbl_markeing_500".en),
                            Padding(
                                padding: EdgeInsets.only(left: 7.h),
                                child: _buildThirtyOneRow(context,
                                    userImage:
                                        ImageConstant.imgRectangle2137x38,
                                    contractingText: "lbl_accounting_15k".en)),
                            Padding(
                                padding: EdgeInsets.only(left: 7.h),
                                child: _buildThirtyOneRow(context,
                                    userImage:
                                        ImageConstant.imgRectangle2137x38,
                                    contractingText:
                                        "msg_communications_4".en)),
                            Padding(
                                padding: EdgeInsets.only(left: 7.h),
                                child: _buildThirtyOneRow(context,
                                    userImage:
                                        ImageConstant.imgRectangle2137x38,
                                    contractingText: "lbl_law_10k".en)),
                            Padding(
                                padding: EdgeInsets.only(left: 7.h),
                                child: _buildThirtyOneRow(context,
                                    userImage:
                                        ImageConstant.imgRectangle2137x38,
                                    contractingText: "lbl_medicine_120".en))
                          ]))
                ]))));
  }

  /// Section Widget
  Widget _buildUserProfileList(BuildContext context) {
    return Expanded(
        child: Align(
            alignment: Alignment.center,
            child: Padding(
                padding: EdgeInsets.only(left: 16.h, right: 9.h),
                child: BlocSelector<HomePersonBloc, HomePersonState,
                        HomePersonModel?>(
                    selector: (state) => state.homePersonModelObj,
                    builder: (context, homePersonModelObj) {
                      return ListView.separated(
                          physics: BouncingScrollPhysics(),
                          shrinkWrap: true,
                          separatorBuilder: (context, index) {
                            return SizedBox(height: 23.v);
                          },
                          itemCount: homePersonModelObj
                                  ?.userprofilelistItemList.length ??
                              0,
                          itemBuilder: (context, index) {
                            UserprofilelistItemModel model = homePersonModelObj
                                    ?.userprofilelistItemList[index] ??
                                UserprofilelistItemModel();
                            return UserprofilelistItemWidget(model,
                                onTapUserProfile: () {
                              onTapUserProfile(context);
                            });
                          });
                    }))));
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));
    });
  }

  /// Common widget
  Widget _buildThirtyOneRow(
    BuildContext context, {
    required String userImage,
    required String contractingText,
    Function? onTapThirtyOneRow,
  }) {
    return GestureDetector(
        onTap: () {
          onTapThirtyOneRow!.call();
        },
        child: Container(
            padding: EdgeInsets.symmetric(horizontal: 11.h, vertical: 3.v),
            decoration: AppDecoration.fillOnPrimary
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder16),
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              CustomImageView(
                  imagePath: userImage,
                  height: 37.v,
                  width: 38.h,
                  margin: EdgeInsets.only(top: 1.v)),
              Padding(
                  padding: EdgeInsets.only(left: 3.h, top: 13.v, bottom: 14.v),
                  child: Text(contractingText,
                      style: CustomTextStyles.labelSmallBluegray900
                          .copyWith(color: appTheme.blueGray900)))
            ])));
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

  /// Navigates to the androidLargeFifteenScreen when the action is triggered.
  onTapUserProfile(BuildContext context) {
    NavigatorService.pushNamed(AppRoutes.androidLargeFifteenScreen);
  }

  /// Navigates to the frame171Screen when the action is triggered.
  onTapImage(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.frame171Screen,
    );
  }

  /// Navigates to the trainingClassificationScreen when the action is triggered.
  onTapThirtyOneRow(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.trainingClassificationScreen,
    );
  }
}
