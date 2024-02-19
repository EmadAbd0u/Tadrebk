import 'bloc/frame_172_bloc.dart';
import 'models/frame_172_model.dart';
import 'package:emad_s_application1/core/app_export.dart';
import 'package:emad_s_application1/core/utils/validation_functions.dart';
import 'package:emad_s_application1/widgets/custom_elevated_button.dart';
import 'package:emad_s_application1/widgets/custom_floating_text_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class Frame172Screen extends StatelessWidget {
  Frame172Screen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<Frame172Bloc>(
        create: (context) =>
            Frame172Bloc(Frame172State(frame172ModelObj: Frame172Model()))
              ..add(Frame172InitialEvent()),
        child: Frame172Screen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<Frame172Bloc, Frame172State>(builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              resizeToAvoidBottomInset: false,
              body: SizedBox(
                  width: SizeUtils.width,
                  child: SingleChildScrollView(
                      padding: EdgeInsets.only(
                          bottom: MediaQuery.of(context).viewInsets.bottom),
                      child: Form(
                          key: _formKey,
                          child: Container(
                              width: double.maxFinite,
                              padding: EdgeInsets.symmetric(
                                  horizontal: 16.h, vertical: 25.v),
                              child: Column(children: [
                                Text("lbl_add_new_card".en,
                                    style: theme.textTheme.headlineSmall),
                                SizedBox(height: 7.v),
                                Text("msg_add_your_card_details".en,
                                    style: CustomTextStyles
                                        .titleSmallBluegray10001),
                                SizedBox(height: 23.v),
                                _buildCardNumberSection(context),
                                SizedBox(height: 15.v),
                                BlocSelector<Frame172Bloc, Frame172State,
                                        TextEditingController?>(
                                    selector: (state) => state.nameController,
                                    builder: (context, nameController) {
                                      return CustomFloatingTextField(
                                          controller: nameController,
                                          labelText: "msg_card_holder_name".en,
                                          labelStyle: CustomTextStyles
                                              .labelLargeSemiBold,
                                          hintText: "msg_card_holder_name".en,
                                          validator: (value) {
                                            if (!isText(value)) {
                                              return "err_msg_please_enter_valid_text"
                                                  .en;
                                            }
                                            return null;
                                          });
                                    }),
                                SizedBox(height: 15.v),
                                _buildNinetyOneSection(context),
                                SizedBox(height: 7.v)
                              ]))))),
              bottomNavigationBar: _buildPayNowSection(context)));
    });
  }

  /// Section Widget
  Widget _buildCardNumberSection(BuildContext context) {
    return Container(
        width: 328.h,
        padding: EdgeInsets.symmetric(horizontal: 8.h, vertical: 3.v),
        decoration: AppDecoration.outlineIndigo70002
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("lbl_card_number".en,
                  style: CustomTextStyles.labelLargeIndigo70002),
              SizedBox(height: 10.v),
              Text("msg_8976_5467_xx87_0098".en,
                  style: CustomTextStyles.labelLargeSemiBold),
              SizedBox(height: 7.v)
            ]));
  }

  /// Section Widget
  Widget _buildNinetyOneSection(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Expanded(
          child: Padding(
              padding: EdgeInsets.only(right: 7.h),
              child: BlocSelector<Frame172Bloc, Frame172State,
                      TextEditingController?>(
                  selector: (state) => state.expirydateController,
                  builder: (context, expirydateController) {
                    return CustomFloatingTextField(
                        controller: expirydateController,
                        labelText: "lbl_expiry_date".en,
                        labelStyle: CustomTextStyles.labelLargeSemiBold,
                        hintText: "lbl_expiry_date".en,
                        textInputAction: TextInputAction.done,
                        contentPadding:
                            EdgeInsets.fromLTRB(7.h, 31.v, 7.h, 11.v));
                  }))),
      Expanded(
          child: Container(
              margin: EdgeInsets.only(left: 7.h),
              padding: EdgeInsets.symmetric(horizontal: 6.h, vertical: 3.v),
              decoration: AppDecoration.outlineIndigo70002
                  .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
              child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("lbl_cvv".en,
                        style: CustomTextStyles.labelLargeIndigo70002),
                    SizedBox(height: 16.v),
                    Padding(
                        padding: EdgeInsets.only(left: 7.h),
                        child: Row(children: [
                          Container(
                              height: 5.adaptSize,
                              width: 5.adaptSize,
                              decoration: BoxDecoration(
                                  color: appTheme.black900,
                                  borderRadius: BorderRadius.circular(2.h))),
                          Container(
                              height: 5.adaptSize,
                              width: 5.adaptSize,
                              margin: EdgeInsets.only(left: 6.h),
                              decoration: BoxDecoration(
                                  color: appTheme.black900,
                                  borderRadius: BorderRadius.circular(2.h))),
                          Container(
                              height: 5.adaptSize,
                              width: 5.adaptSize,
                              margin: EdgeInsets.only(left: 7.h),
                              decoration: BoxDecoration(
                                  color: appTheme.black900,
                                  borderRadius: BorderRadius.circular(2.h)))
                        ])),
                    SizedBox(height: 11.v)
                  ])))
    ]);
  }

  /// Section Widget
  Widget _buildPayNowSection(BuildContext context) {
    return CustomElevatedButton(
        text: "lbl_pay_now".en,
        margin: EdgeInsets.only(left: 16.h, right: 16.h, bottom: 38.v),
        buttonStyle: CustomButtonStyles.none,
        decoration: CustomButtonStyles.gradientBlueGrayToPrimaryTL30Decoration,
        buttonTextStyle: CustomTextStyles.titleMediumOnPrimary,
        onPressed: () {
          onTapPayNowSection(context);
        });
  }

  /// Navigates to the frame173Screen when the action is triggered.
  onTapPayNowSection(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.frame173Screen,
    );
  }
}
