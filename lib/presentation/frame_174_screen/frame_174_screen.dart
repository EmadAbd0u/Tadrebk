import 'package:flutter/cupertino.dart';

import '../frame_174_screen/widgets/userprofile4_item_widget.dart';
import 'bloc/frame_174_bloc.dart';
import 'models/frame_174_model.dart';
import 'models/userprofile4_item_model.dart';
import 'package:emad_s_application1/core/app_export.dart';
import 'package:emad_s_application1/widgets/app_bar/appbar_leading_image.dart';
import 'package:emad_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:emad_s_application1/widgets/app_bar/appbar_title_image.dart';
import 'package:emad_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:emad_s_application1/widgets/custom_rating_bar.dart';
import 'package:flutter/material.dart';

class Frame174Screen extends StatelessWidget {
  const Frame174Screen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<Frame174Bloc>(
        create: (context) =>
            Frame174Bloc(Frame174State(frame174ModelObj: Frame174Model()))
              ..add(Frame174InitialEvent()),
        child: Frame174Screen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SingleChildScrollView(
              child: SizedBox(
                  height: SizeUtils.height,
                  width: double.maxFinite,
                  child: Stack(alignment: Alignment.center, children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgGroup164,
                        height: 760.v,
                        width: 360.h,
                        alignment: Alignment.topCenter),
                    SingleChildScrollView(
                      child: Align(
                          alignment: Alignment.center,
                          child: Container(
                              padding: EdgeInsets.symmetric(vertical: 29.v),
                              child:
                                  Column(mainAxisSize: MainAxisSize.min, children: [
                                _buildAppBar(context),
                                SizedBox(height: 30.v),
                                _buildFrameFortyFive(context),
                                SizedBox(height: 14.v),
                                _buildUserProfile(context),
                                SizedBox(height: 39.v)
                              ]))),
                    )
                  ])),
            )));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 44.v,
        leadingWidth: 40.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowDownOnprimary,
            margin: EdgeInsets.only(left: 16.h, top: 4.v, bottom: 18.v),
            onTap: () {
              onTapArrowDown(context);
            }),
        centerTitle: true,
        title: Row(children: [
          AppbarTitleImage(
              imagePath: ImageConstant.imgZondiconsAddOutlineOnprimary,
              margin: EdgeInsets.only(bottom: 9.v)),
          AppbarTitle(
              text: "lbl_applicants".en,
              margin: EdgeInsets.only(left: 14.h, top: 10.v))
        ]));
  }

  /// Section Widget
  Widget _buildFrameFortyFive(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 26.h),
        decoration: AppDecoration.outlineBlack9001
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder20),
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          CustomImageView(
              imagePath: ImageConstant.imgRectangle234,
              height: 139.v,
              width: 307.h,
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
                          Row(

                              mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomRatingBar(initialRating: 0),
                                Padding(
                                    padding: EdgeInsets.only(top: 10.v),
                                    child: Text("lbl_80_reviews".en,
                                        style: CustomTextStyles.labelMediumBluegray400))
                              ])
                        ]),
                    Padding(
                        padding: EdgeInsets.only(bottom: 10.v),
                        child: Column(children: [
                          Text("lbl_price_training".en,
                              style: theme.textTheme.labelLarge),
                          SizedBox(height: 7.v),
                          Align(
                              alignment: Alignment.centerRight,
                              child: Padding(
                                  padding: EdgeInsets.only(right: 7.h),
                                  child: Text("lbl_180l_e".en,
                                      style: CustomTextStyles
                                          .titleSmallBluegray900)))
                        ]))
                  ])),
          SizedBox(height: 11.v)
        ]));
  }

  /// Section Widget
  Widget _buildUserProfile(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 25.h),
        child: BlocSelector<Frame174Bloc, Frame174State, Frame174Model?>(
            selector: (state) => state.frame174ModelObj,
            builder: (context, frame174ModelObj) {
              return ListView.separated(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  separatorBuilder: (context, index) {
                    return SizedBox(height: 14.v);
                  },
                  itemCount: frame174ModelObj?.userprofile4ItemList.length ?? 0,
                  itemBuilder: (context, index) {
                    Userprofile4ItemModel model =
                        frame174ModelObj?.userprofile4ItemList[index] ??
                            Userprofile4ItemModel();
                    return Userprofile4ItemWidget(model);
                  });
            }));
  }

  /// Navigates to the androidLargeSixContainerScreen when the action is triggered.
  onTapArrowDown(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.androidLargeSixContainerScreen,
    );
  }
}
