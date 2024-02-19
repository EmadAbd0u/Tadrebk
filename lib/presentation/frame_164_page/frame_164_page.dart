import '../frame_164_page/widgets/userprofile2_item_widget.dart';
import 'bloc/frame_164_bloc.dart';
import 'models/frame_164_model.dart';
import 'models/userprofile2_item_model.dart';
import 'package:emad_s_application1/core/app_export.dart';
import 'package:emad_s_application1/widgets/app_bar/appbar_leading_image.dart';
import 'package:emad_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:emad_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class Frame164Page extends StatelessWidget {
  const Frame164Page({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<Frame164Bloc>(
      create: (context) => Frame164Bloc(Frame164State(
        frame164ModelObj: Frame164Model(),
      ))
        ..add(Frame164InitialEvent()),
      child: Frame164Page(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Container(
          margin: EdgeInsets.symmetric(horizontal: 16.h),
          padding: EdgeInsets.symmetric(
            horizontal: 6.h,
            vertical: 26.v,
          ),
          decoration: AppDecoration.outlineGray.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder16,
          ),
          child: BlocSelector<Frame164Bloc, Frame164State, Frame164Model?>(
            selector: (state) => state.frame164ModelObj,
            builder: (context, frame164ModelObj) {
              return ListView.separated(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                separatorBuilder: (
                  context,
                  index,
                ) {
                  return SizedBox(
                    height: 13.v,
                  );
                },
                itemCount: frame164ModelObj?.userprofile2ItemList.length ?? 0,
                itemBuilder: (context, index) {
                  Userprofile2ItemModel model =
                      frame164ModelObj?.userprofile2ItemList[index] ??
                          Userprofile2ItemModel();
                  return Userprofile2ItemWidget(
                    model,
                  );
                },
              );
            },
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 49.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgGroup129,
        margin: EdgeInsets.only(
          left: 19.h,
          top: 23.v,
          bottom: 241.v,
        ),
      ),
      title: AppbarTitle(
        text: "lbl_notifications".en,
        margin: EdgeInsets.only(
          left: 16.h,
          top: 27.v,
          bottom: 232.v,
        ),
      ),
      styleType: Style.bgFill,
    );
  }
}
