import '../frame_168_page/widgets/userprofile_item_widget.dart';
import 'bloc/frame_168_bloc.dart';
import 'models/frame_168_model.dart';
import 'models/userprofile_item_model.dart';
import 'package:emad_s_application1/core/app_export.dart';
import 'package:emad_s_application1/widgets/app_bar/appbar_leading_image.dart';
import 'package:emad_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:emad_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class Frame168Page extends StatelessWidget {
  const Frame168Page({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<Frame168Bloc>(
      create: (context) => Frame168Bloc(Frame168State(
        frame168ModelObj: Frame168Model(),
      ))
        ..add(Frame168InitialEvent()),
      child: Frame168Page(),
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
          child: BlocSelector<Frame168Bloc, Frame168State, Frame168Model?>(
            selector: (state) => state.frame168ModelObj,
            builder: (context, frame168ModelObj) {
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
                itemCount: frame168ModelObj?.userprofileItemList.length ?? 0,
                itemBuilder: (context, index) {
                  UserprofileItemModel model =
                      frame168ModelObj?.userprofileItemList[index] ??
                          UserprofileItemModel();
                  return UserprofileItemWidget(
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
