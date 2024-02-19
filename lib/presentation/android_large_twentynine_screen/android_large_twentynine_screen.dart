import 'bloc/android_large_twentynine_bloc.dart';
import 'models/android_large_twentynine_model.dart';
import 'package:emad_s_application1/core/app_export.dart';
import 'package:emad_s_application1/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class AndroidLargeTwentynineScreen extends StatelessWidget {
  const AndroidLargeTwentynineScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<AndroidLargeTwentynineBloc>(
        create: (context) => AndroidLargeTwentynineBloc(
            AndroidLargeTwentynineState(
                androidLargeTwentynineModelObj: AndroidLargeTwentynineModel()))
          ..add(AndroidLargeTwentynineInitialEvent()),
        child: AndroidLargeTwentynineScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AndroidLargeTwentynineBloc, AndroidLargeTwentynineState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              body: Container(
                  width: double.maxFinite,
                  padding:
                      EdgeInsets.symmetric(horizontal: 16.h, vertical: 64.v),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Spacer(flex: 56),
                        SizedBox(
                            width: 181.h,
                            child: Text("msg_submitted_successfully".en,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.center,
                                style: CustomTextStyles
                                    .headlineLargeBakbakOneGreenA700
                                    .copyWith(height: 1.08))),
                        Spacer(flex: 43),
                        CustomElevatedButton(
                            text: "lbl_back_to_home".en,
                            buttonStyle: CustomButtonStyles.none,
                            decoration: CustomButtonStyles
                                .gradientBlueGrayToPrimaryTL30Decoration,
                            buttonTextStyle:
                                CustomTextStyles.titleMediumOnPrimary,
                            onPressed: () {
                              onTapBackToHome(context);
                            })
                      ]))));
    });
  }

  /// Navigates to the androidLargeSixContainerScreen when the action is triggered.
  onTapBackToHome(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.androidLargeSixContainerScreen,
    );
  }
}
