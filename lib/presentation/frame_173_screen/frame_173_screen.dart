import 'bloc/frame_173_bloc.dart';
import 'models/frame_173_model.dart';
import 'package:emad_s_application1/core/app_export.dart';
import 'package:emad_s_application1/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class Frame173Screen extends StatelessWidget {
  const Frame173Screen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<Frame173Bloc>(
        create: (context) =>
            Frame173Bloc(Frame173State(frame173ModelObj: Frame173Model()))
              ..add(Frame173InitialEvent()),
        child: Frame173Screen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<Frame173Bloc, Frame173State>(builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              body: Container(
                  width: double.maxFinite,
                  padding: EdgeInsets.symmetric(vertical: 42.v),
                  child: Column(children: [
                    SizedBox(height: 9.v),
                    CustomImageView(
                        imagePath: ImageConstant.imgGroup,
                        height: 91.v,
                        width: 160.h),
                    SizedBox(height: 32.v),
                    SizedBox(
                        width: 156.h,
                        child: RichText(
                            text: TextSpan(children: [
                              TextSpan(
                                  text: "msg_payment_received".en,
                                  style: CustomTextStyles.titleMediumff000000),
                              TextSpan(
                                  text: "lbl_successfully".en,
                                  style: CustomTextStyles.titleMediumff20bf55)
                            ]),
                            textAlign: TextAlign.center)),
                    SizedBox(height: 42.v),
                    Text("lbl_congratulations".en,
                        style: CustomTextStyles.titleMediumMedium)
                  ])),
              bottomNavigationBar: _buildPaymentReceivedText(context)));
    });
  }

  /// Section Widget
  Widget _buildPaymentReceivedText(BuildContext context) {
    return CustomElevatedButton(
        text: "lbl_back_to_home2".en,
        margin: EdgeInsets.only(left: 16.h, right: 16.h, bottom: 42.v),
        buttonStyle: CustomButtonStyles.none,
        decoration: CustomButtonStyles.gradientBlueGrayToPrimaryTL30Decoration,
        buttonTextStyle: CustomTextStyles.titleMediumOnPrimary,
        onPressed: () {
          onTapPaymentReceivedText(context);
        });
  }

  /// Navigates to the homePersonScreen when the action is triggered.
  onTapPaymentReceivedText(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.homePersonScreen,
    );
  }
}
