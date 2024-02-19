import 'bloc/android_large_six_bloc.dart';
import 'models/android_large_six_model.dart';
import 'package:emad_s_application1/core/app_export.dart';
import 'package:emad_s_application1/widgets/app_bar/appbar_leading_image.dart';
import 'package:emad_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:emad_s_application1/widgets/custom_icon_button.dart';
import 'package:emad_s_application1/widgets/custom_rating_bar.dart';
import 'package:emad_s_application1/widgets/custom_search_view.dart';
import 'package:flutter/material.dart';

class AndroidLargeSixPage extends StatelessWidget {
  const AndroidLargeSixPage({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<AndroidLargeSixBloc>(
        create: (context) => AndroidLargeSixBloc(AndroidLargeSixState(
            androidLargeSixModelObj: AndroidLargeSixModel()))
          ..add(AndroidLargeSixInitialEvent()),
        child: AndroidLargeSixPage());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Container(
                width: double.maxFinite,
                decoration: AppDecoration.fillOnPrimary,
                child: Column(children: [
                  _buildPersonHomePageStack(context),
                  SizedBox(height: 11.v),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Column(children: [
                    _buildSearchRow(context),
                    SizedBox(height: 13.v),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                            padding: EdgeInsets.only(left: 16.h),
                            child: Text("msg_courses_classification".en,
                                style: CustomTextStyles
                                    .titleSmallRobotoBluegray900))),
                    SizedBox(height: 9.v),
                    _buildCoursesView(context),
                    SizedBox(height: 16.v),
                    _buildMyCoursesRow(context),
                    SizedBox(height: 15.v),
                    _buildFrameFortyTwoColumn(context),
                    SizedBox(height: 23.v),
                    SizedBox(
                        height: 449.v,
                        width: double.maxFinite,
                        child: Stack(alignment: Alignment.topCenter, children: [
                          Align(
                              alignment: Alignment.bottomRight,
                              child: Padding(
                                  padding: EdgeInsets.only(
                                      left: 301.h, right: 27.h, bottom: 181.v),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        CustomImageView(
                                            imagePath: ImageConstant.imgGroup5,
                                            height: 30.adaptSize,
                                            width: 30.adaptSize),
                                        Text("lbl_profile2".en,
                                            style: CustomTextStyles
                                                .labelMediumOnPrimary_1)
                                      ]))),
                          _buildFrame_1(context),
                          _buildFrame_2(context),


                          Align(
                              alignment: Alignment.topCenter,
                              child: Container(
                                  height: 146.v,
                                  width: double.maxFinite,
                                  margin: EdgeInsets.only(top: 139.v))),
                          Align(
                              alignment: Alignment.topRight,
                              child: GestureDetector(
                                  onTap: () {
                                    onTapFacebook(context);
                                  },
                                  child: Container(
                                      height: 61.adaptSize,
                                      width: 61.adaptSize,
                                      margin: EdgeInsets.only(
                                          top: 139.v, right: 16.h),
                                      padding: EdgeInsets.all(5.h),
                                      child: Stack(
                                          alignment: Alignment.center,
                                          children: [
                                            Align(
                                                alignment: Alignment.center,
                                                child: Container(
                                                    height: 34.adaptSize,
                                                    width: 34.adaptSize,
                                                    decoration: BoxDecoration(
                                                        color: theme.colorScheme
                                                            .onPrimary
                                                            .withOpacity(1)))),
                                            CustomImageView(
                                                imagePath:
                                                    ImageConstant.imgVector,
                                                height: 50.adaptSize,
                                                width: 50.adaptSize,
                                                alignment: Alignment.center)
                                          ]))))
                        ]))
                  ])))
                ]))));
  }

  /// Section Widget
  Widget _buildPersonHomePageStack(BuildContext context) {
    return SizedBox(
        height: 81.v,
        width: double.maxFinite,
        child: Stack(alignment: Alignment.centerRight, children: [
          CustomAppBar(
              height: 81.v,
              leadingWidth: double.maxFinite,
              leading: AppbarLeadingImage(
                  imagePath: ImageConstant.imgGroup2,
                  margin: EdgeInsets.fromLTRB(16.h, 28.v, 320.h, 28.v)),
              styleType: Style.bgGradientnamebluegray900nameprimary),
          Align(
              alignment: Alignment.centerRight,
              child: Padding(
                  padding: EdgeInsets.only(right: 17.h),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgRectangle56,
                            height: 69.v,
                            width: 98.h),
                        CustomImageView(
                            imagePath: ImageConstant.imgPersonHomePage,
                            height: 40.adaptSize,
                            width: 40.adaptSize,
                            radius: BorderRadius.circular(20.h),
                            margin: EdgeInsets.only(
                                left: 74.h, top: 15.v, bottom: 14.v),
                            onTap: () {
                              onTapImgPersonHomePage(context);
                            })
                      ])))
        ]));
  }

  /// Section Widget
  Widget _buildSearchRow(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Expanded(
              child: BlocSelector<AndroidLargeSixBloc, AndroidLargeSixState,
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
                  decoration: IconButtonStyleHelper.gradientBlueGrayToPrimary,
                  child: CustomImageView(imagePath: ImageConstant.imgGroup28)))
        ]));
  }

  /// Section Widget
  Widget _buildCoursesView(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.only(left: 16.h),
        child: IntrinsicWidth(
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          SizedBox(
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
                        contractingText: "lbl_programming_56".en)),
                Padding(
                    padding: EdgeInsets.only(left: 137.h, right: 77.h),
                    child: _buildThirtyOneRow(context,
                        userImage: ImageConstant.imgRectangle21,
                        contractingText: "lbl_conracting_25k".en)),
                Padding(
                    padding: EdgeInsets.only(left: 274.h),
                    child: _buildThirtyOneRow(context,
                        userImage: ImageConstant.imgRectangle2137x38,
                        contractingText: "lbl_markeing_500".en))
              ])),
          Spacer(),
          _buildThirtyOneRow(context,
              userImage: ImageConstant.imgRectangle2137x38,
              contractingText: "lbl_accounting_15k".en),
          Padding(
              padding: EdgeInsets.only(left: 7.h),
              child: _buildThirtyOneRow(context,
                  userImage: ImageConstant.imgRectangle2137x38,
                  contractingText: "msg_communications_4".en)),
          Padding(
              padding: EdgeInsets.only(left: 7.h),
              child: _buildThirtyOneRow(context,
                  userImage: ImageConstant.imgRectangle2137x38,
                  contractingText: "lbl_law_10k".en)),
          Padding(
              padding: EdgeInsets.only(left: 7.h),
              child: _buildThirtyOneRow(context,
                  userImage: ImageConstant.imgRectangle2137x38,
                  contractingText: "lbl_medicine_120".en))
        ])));
  }

  /// Section Widget
  Widget _buildMyCoursesRow(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Padding(
              padding: EdgeInsets.only(top: 1.v),
              child: Text("lbl_my_courses".en,
                  style: CustomTextStyles.titleSmallRobotoBluegray900)),
          Text("lbl_edit".en,
              style: CustomTextStyles.titleSmallRobotoBluegray900)
        ]));
  }

  /// Section Widget
  Widget _buildFrameFortyTwoColumn(BuildContext context) {
    return GestureDetector(
        onTap: () {
          onTapFrameFortyTwoColumn(context);
        },
        child: Container(
            margin: EdgeInsets.symmetric(horizontal: 16.h),
            decoration: AppDecoration.outlineBlack9001
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder20),
            child: Column(mainAxisSize: MainAxisSize.min, children: [
              CustomImageView(
                  imagePath: ImageConstant.imgRectangle23,
                  height: 139.v,
                  width: 328.h,
                  radius: BorderRadius.vertical(top: Radius.circular(20.h))),
              SizedBox(height: 8.v),
              Padding(
                  padding: EdgeInsets.only(left: 15.h, right: 6.h),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("lbl_el_bank_al_ahly".en,
                                  style: theme.textTheme.titleSmall),
                              Text("msg_cairo_talat_harb".en,
                                  style: theme.textTheme.labelSmall),
                              SizedBox(height: 2.v),
                              Text("msg_information_technology".en,
                                  style: theme.textTheme.labelSmall),
                              SizedBox(
                                  width: 152.h,
                                  child: Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      children: [
                                        CustomRatingBar(
                                            initialRating: 0,
                                            itemSize: 12,
                                            itemCount: 5),
                                        Text("lbl_80_reviews".en,
                                            style: CustomTextStyles
                                                .labelMediumBluegray400)
                                      ]))
                            ]),
                        Padding(
                            padding: EdgeInsets.only(bottom: 10.v),
                            child: _buildFrameFortyFourColumn(context,
                                priceTrainingText: "lbl_price_training".en,
                                webUrlText: "lbl_180l_e".en))
                      ])),

              SizedBox(height: 11.v),
            ])));
  }

  /// Section Widget
  Widget _buildFrame_2(BuildContext context) {
    return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
            margin: EdgeInsets.symmetric(horizontal: 16.h),
            decoration: AppDecoration.outlineBlack9001
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder20),
            child: Column(mainAxisSize: MainAxisSize.min, children: [
              CustomImageView(
                  imagePath: ImageConstant.imgRectangle231,
                  height: 139.v,
                  width: 328.h,
                  radius: BorderRadius.vertical(top: Radius.circular(20.h))),
              SizedBox(height: 8.v),
              Padding(
                  padding: EdgeInsets.only(left: 15.h, right: 6.h),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("lbl_el_bank_al_ahly".en,
                                  style: theme.textTheme.titleSmall),
                              Text("msg_cairo_talat_harb".en,
                                  style: theme.textTheme.labelSmall),
                              SizedBox(height: 2.v),
                              Text("msg_information_technology".en,
                                  style: theme.textTheme.labelSmall),
                              SizedBox(
                                  width: 152.h,
                                  child: Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      children: [
                                        CustomRatingBar(
                                            initialRating: 0,
                                            itemSize: 12,
                                            itemCount: 5),
                                        Text("lbl_80_reviews".en,
                                            style: CustomTextStyles
                                                .labelMediumBluegray400)
                                      ]))
                            ]),
                        Padding(
                            padding: EdgeInsets.only(bottom: 10.v),
                            child: _buildFrameFortyFourColumn(context,
                                priceTrainingText: "lbl_price_training".en,
                                webUrlText: "lbl_180l_e".en))
                      ])),
              SizedBox(height: 11.v)
            ])));
  }


  /// Section Widget
  Widget _buildFrame_1(BuildContext context) {
    return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
            margin: EdgeInsets.symmetric(horizontal: 16.h),
            decoration: AppDecoration.outlineBlack9001
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder20),
            child: Column(mainAxisSize: MainAxisSize.min, children: [
              CustomImageView(
                  imagePath: ImageConstant.imgRectangle231,
                  height: 139.v,
                  width: 328.h,
                  radius: BorderRadius.vertical(top: Radius.circular(20.h))),
              SizedBox(height: 8.v),
              Padding(
                  padding: EdgeInsets.only(left: 15.h, right: 6.h),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("lbl_el_bank_al_ahly".en,
                                  style: theme.textTheme.titleSmall),
                              Text("msg_cairo_talat_harb".en,
                                  style: theme.textTheme.labelSmall),
                              SizedBox(height: 2.v),
                              Text("msg_information_technology".en,
                                  style: theme.textTheme.labelSmall),
                              SizedBox(
                                  width: 152.h,
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        CustomRatingBar(
                                            initialRating: 0,
                                            itemSize: 12,
                                            itemCount: 5),
                                        Text("lbl_80_reviews".en,
                                            style: CustomTextStyles
                                                .labelMediumBluegray400)
                                      ]))
                            ]),
                        Padding(
                            padding: EdgeInsets.only(bottom: 10.v),
                            child: _buildFrameFortyFourColumn(context,
                                priceTrainingText: "lbl_price_training".en,
                                webUrlText: "lbl_180l_e".en))
                      ])),
              SizedBox(height: 11.v)
            ])));
  }

  /// Common widget
  Widget _buildThirtyOneRow(
    BuildContext context, {
    required String userImage,
    required String contractingText,
  }) {

    /// بنر للصور فوق
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 11.h, vertical: 3.v),
        decoration: AppDecoration.fillOnPrimary
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder20),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          CustomImageView(
              imagePath: userImage,
              height: 37.v,
              width: 10.h,
              margin: EdgeInsets.only(top: 1.v)),
          Padding(
              padding: EdgeInsets.only(left: 3.h, top: 13.v, bottom: 14.v),
              child: Text(contractingText,
                  style: CustomTextStyles.labelSmallBluegray900
                      .copyWith(color: appTheme.blueGray900)))
        ]));
  }

  /// Common widget
  Widget _buildFrameFortyFourColumn(
    BuildContext context, {
    required String priceTrainingText,
    required String webUrlText,
  }) {
    return Column(children: [
      Text(priceTrainingText,
          style:
              theme.textTheme.labelLarge!.copyWith(color: appTheme.black900)),
      SizedBox(height: 7.v),
      Text(webUrlText,
          style: CustomTextStyles.titleSmallBluegray900
              .copyWith(color: appTheme.blueGray900))
    ]);
  }

  /// Navigates to the androidLargeTwentyeightScreen when the action is triggered.
  onTapImgPersonHomePage(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.androidLargeTwentyeightScreen,
    );
  }

  /// Navigates to the frame174Screen when the action is triggered.
  onTapFrameFortyTwoColumn(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.frame174Screen,
    );
  }

  /// Navigates to the androidLargeTwentysixScreen when the action is triggered.
  onTapFacebook(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.androidLargeTwentysixScreen,
    );
  }
}
