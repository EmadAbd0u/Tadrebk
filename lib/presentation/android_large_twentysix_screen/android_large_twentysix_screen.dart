import 'bloc/android_large_twentysix_bloc.dart';
import 'models/android_large_twentysix_model.dart';
import 'package:emad_s_application1/core/app_export.dart';
import 'package:emad_s_application1/core/utils/validation_functions.dart';
import 'package:emad_s_application1/widgets/app_bar/appbar_leading_iconbutton_one.dart';
import 'package:emad_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:emad_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:emad_s_application1/widgets/custom_elevated_button.dart';
import 'package:emad_s_application1/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class AndroidLargeTwentysixScreen extends StatelessWidget {
  AndroidLargeTwentysixScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<AndroidLargeTwentysixBloc>(
        create: (context) => AndroidLargeTwentysixBloc(
            AndroidLargeTwentysixState(
                androidLargeTwentysixModelObj: AndroidLargeTwentysixModel()))
          ..add(AndroidLargeTwentysixInitialEvent()),
        child: AndroidLargeTwentysixScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: Form(
                key: _formKey,
                child: SingleChildScrollView(
                    child: Container(
                        height: 759.v,
                        width: double.maxFinite,
                        margin: EdgeInsets.only(bottom: 5.v),
                        child:
                            Stack(alignment: Alignment.bottomCenter, children: [
                          Align(
                              alignment: Alignment.topCenter,
                              child: Container(
                                  height: 316.v,
                                  width: double.maxFinite,
                                  decoration: BoxDecoration(
                                      color: appTheme.indigo70002,
                                      borderRadius: BorderRadius.vertical(
                                          bottom: Radius.circular(12.h))))),
                          _buildFormSection(context)
                        ])))),
            bottomNavigationBar: _buildSubmitButton(context)));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 44.v,
        leadingWidth: 51.h,
        leading: AppbarLeadingIconbuttonOne(
            imagePath: ImageConstant.imgZondiconsAddOutline,
            margin: EdgeInsets.only(left: 16.h, bottom: 9.v)),
        title: AppbarTitle(
            text: "lbl_add_training".en, margin: EdgeInsets.only(left: 14.h)));
  }

  /// Section Widget
  Widget _buildFormSection(BuildContext context) {
    return Align(
        alignment: Alignment.bottomCenter,
        child: SizedBox(
            height: 676.v,
            width: 328.h,
            child: Stack(alignment: Alignment.topCenter, children: [
              Align(
                  alignment: Alignment.center,
                  child: Container(
                      height: 676.v,
                      width: 328.h,
                      decoration: BoxDecoration(
                          color: theme.colorScheme.onPrimary.withOpacity(1),
                          borderRadius: BorderRadius.circular(16.h),
                          boxShadow: [
                            BoxShadow(
                                color: appTheme.gray800.withOpacity(0.15),
                                spreadRadius: 2.h,
                                blurRadius: 2.h,
                                offset: Offset(0, 2))
                          ]))),
              Align(
                  alignment: Alignment.topCenter,
                  child: Padding(
                      padding:
                          EdgeInsets.only(left: 8.h, top: 18.v, right: 13.h),
                      child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                                padding: EdgeInsets.only(left: 5.h),
                                child: BlocSelector<
                                        AndroidLargeTwentysixBloc,
                                        AndroidLargeTwentysixState,
                                        TextEditingController?>(
                                    selector: (state) => state.nameController,
                                    builder: (context, nameController) {
                                      return CustomTextFormField(
                                          textAlignVertical:  TextAlignVertical.center,

                                          controller: nameController,
                                          hintText: "msg_enter_company_name".en,
                                          hintStyle: CustomTextStyles
                                              .titleSmallUrbanistGray9007f,
                                          validator: (value) {
                                            if (!isText(value)) {
                                              return "err_msg_please_enter_valid_text"
                                                  .en;
                                            }
                                            return null;
                                          },
                                          contentPadding: EdgeInsets.symmetric(
                                              horizontal: 14.h, vertical: 16.v),
                                          borderDecoration:
                                              TextFormFieldStyleHelper
                                                  .outlineBlack,
                                          filled: false);
                                    })),
                            SizedBox(height: 24.v),
                            Padding(
                                padding: EdgeInsets.only(left: 5.h),
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Expanded(
                                          child: Padding(
                                              padding:
                                                  EdgeInsets.only(right: 4.h),
                                              child: BlocSelector<
                                                      AndroidLargeTwentysixBloc,
                                                      AndroidLargeTwentysixState,
                                                      TextEditingController?>(
                                                  selector: (state) =>
                                                      state.cityController,
                                                  builder: (context,
                                                      cityController) {
                                                    return CustomTextFormField(
                                                        textAlignVertical:  TextAlignVertical.center,

                                                        controller:
                                                            cityController,
                                                        hintText: "lbl_city".en,
                                                        hintStyle: CustomTextStyles
                                                            .titleSmallUrbanistGray9007f,
                                                        contentPadding:
                                                            EdgeInsets
                                                                .symmetric(
                                                                    horizontal:
                                                                        14.h,
                                                                    vertical:
                                                                        18.v),
                                                        borderDecoration:
                                                            TextFormFieldStyleHelper
                                                                .outlineBlack,
                                                        filled: false);
                                                  }))),
                                      Expanded(
                                          child: Padding(
                                              padding:
                                                  EdgeInsets.only(left: 4.h),
                                              child: BlocSelector<
                                                      AndroidLargeTwentysixBloc,
                                                      AndroidLargeTwentysixState,
                                                      TextEditingController?>(
                                                  selector: (state) =>
                                                      state.streetController,
                                                  builder: (context,
                                                      streetController) {
                                                    return CustomTextFormField(
                                                        textAlignVertical:  TextAlignVertical.center,

                                                        controller:
                                                            streetController,
                                                        hintText:
                                                            "lbl_street".en,
                                                        hintStyle: CustomTextStyles
                                                            .titleSmallUrbanistGray9007f,
                                                        contentPadding:
                                                            EdgeInsets
                                                                .symmetric(
                                                                    horizontal:
                                                                        14.h,
                                                                    vertical:
                                                                        18.v),
                                                        borderDecoration:
                                                            TextFormFieldStyleHelper
                                                                .outlineBlack,
                                                        filled: false);
                                                  })))
                                    ])),
                            SizedBox(height: 24.v),
                            Padding(
                                padding: EdgeInsets.only(left: 5.h),
                                child: BlocSelector<
                                        AndroidLargeTwentysixBloc,
                                        AndroidLargeTwentysixState,
                                        TextEditingController?>(
                                    selector: (state) => state
                                        .enterTrainingSpecializationController,
                                    builder: (context,
                                        enterTrainingSpecializationController) {
                                      return CustomTextFormField(
                                          textAlignVertical:  TextAlignVertical.center,

                                          controller:
                                              enterTrainingSpecializationController,
                                          hintText:
                                              "msg_enter_training_specialization"
                                                  .en,
                                          hintStyle: CustomTextStyles
                                              .titleSmallUrbanistGray9007f,
                                          contentPadding: EdgeInsets.symmetric(
                                              horizontal: 14.h, vertical: 18.v),
                                          borderDecoration:
                                              TextFormFieldStyleHelper
                                                  .outlineBlack,
                                          filled: false);
                                    })),
                            SizedBox(height: 24.v),
                            Padding(
                                padding: EdgeInsets.only(left: 5.h),
                                child: BlocSelector<
                                        AndroidLargeTwentysixBloc,
                                        AndroidLargeTwentysixState,
                                        TextEditingController?>(
                                    selector: (state) =>
                                        state.enterTrainingCostController,
                                    builder:
                                        (context, enterTrainingCostController) {
                                      return CustomTextFormField(
                                          textAlignVertical:  TextAlignVertical.center,

                                          controller:
                                              enterTrainingCostController,
                                          hintText:
                                              "msg_enter_training_cost".en,
                                          hintStyle: CustomTextStyles
                                              .titleSmallUrbanistGray9007f,
                                          contentPadding: EdgeInsets.symmetric(
                                              horizontal: 14.h, vertical: 18.v),
                                          borderDecoration:
                                              TextFormFieldStyleHelper
                                                  .outlineBlack,
                                          filled: false);
                                    })),
                            SizedBox(height: 24.v),
                            Padding(
                                padding: EdgeInsets.only(left: 5.h),
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Expanded(
                                          child: Padding(
                                              padding:
                                                  EdgeInsets.only(right: 4.h),
                                              child: BlocSelector<
                                                      AndroidLargeTwentysixBloc,
                                                      AndroidLargeTwentysixState,
                                                      TextEditingController?>(
                                                  selector: (state) =>
                                                      state.dateController,
                                                  builder: (context,
                                                      dateController) {
                                                    return CustomTextFormField(
                                                        textAlignVertical:  TextAlignVertical.center,

                                                        controller:
                                                            dateController,
                                                        hintText:
                                                            "lbl_start_date".en,
                                                        hintStyle: CustomTextStyles
                                                            .titleSmallUrbanistGray9007f,
                                                        contentPadding:
                                                            EdgeInsets.symmetric(
                                                                horizontal:
                                                                    14.h,
                                                                vertical: 18.v),
                                                        borderDecoration:
                                                            TextFormFieldStyleHelper
                                                                .outlineBlack,
                                                        filled: false);
                                                  }))),
                                      Expanded(
                                          child: Padding(
                                              padding:
                                                  EdgeInsets.only(left: 4.h),
                                              child: BlocSelector<
                                                      AndroidLargeTwentysixBloc,
                                                      AndroidLargeTwentysixState,
                                                      TextEditingController?>(
                                                  selector: (state) =>
                                                      state.dateController1,
                                                  builder: (context,
                                                      dateController1) {
                                                    return CustomTextFormField(
                                                        textAlignVertical:  TextAlignVertical.center,

                                                        controller:
                                                            dateController1,
                                                        hintText:
                                                            "lbl_end_date".en,
                                                        hintStyle: CustomTextStyles
                                                            .titleSmallUrbanistGray9007f,
                                                        textInputAction:
                                                            TextInputAction
                                                                .done,
                                                        contentPadding:
                                                            EdgeInsets
                                                                .symmetric(
                                                                    horizontal:
                                                                        14.h,
                                                                    vertical:
                                                                        18.v),
                                                        borderDecoration:
                                                            TextFormFieldStyleHelper
                                                                .outlineBlack,
                                                        filled: false);
                                                  })))
                                    ])),
                            SizedBox(height: 13.v),
                            Text("msg_upload_a_photo_of".en,
                                style: CustomTextStyles
                                    .titleMediumUrbanistGray9007f),
                            SizedBox(height: 11.v),
                            Container(
                                margin: EdgeInsets.only(left: 1.h, right: 4.h),
                                padding: EdgeInsets.symmetric(
                                    horizontal: 111.h, vertical: 64.v),
                                decoration: AppDecoration.outlineIndigo
                                    .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.circleBorder30),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      CustomImageView(
                                          imagePath: ImageConstant.imgUser,
                                          height: 28.adaptSize,
                                          width: 28.adaptSize),
                                      SizedBox(height: 17.v),
                                      Text("lbl_select_file".en,
                                          style: CustomTextStyles
                                              .titleMediumUrbanistGray50001)
                                    ]))
                          ])))
            ])));
  }

  /// Section Widget
  Widget _buildSubmitButton(BuildContext context) {
    return CustomElevatedButton(
        text: "lbl_submit".en,
        margin: EdgeInsets.only(left: 16.h, right: 16.h, bottom: 58.v),
        buttonStyle: CustomButtonStyles.none,
        decoration: CustomButtonStyles.gradientBlueGrayToPrimaryTL30Decoration,
        buttonTextStyle: CustomTextStyles.titleMediumOnPrimary,
        onPressed: () {
          onTapSubmitButton(context);
        });
  }

  /// Navigates to the androidLargeTwentynineScreen when the action is triggered.
  onTapSubmitButton(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.androidLargeTwentynineScreen,
    );
  }
}
