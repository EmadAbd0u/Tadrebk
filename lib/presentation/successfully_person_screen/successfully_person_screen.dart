import 'bloc/successfully_person_bloc.dart';
import 'models/successfully_person_model.dart';
import 'package:emad_s_application1/core/app_export.dart';
import 'package:emad_s_application1/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class SuccessfullyPersonScreen extends StatelessWidget {
  const SuccessfullyPersonScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<SuccessfullyPersonBloc>(
        create: (context) => SuccessfullyPersonBloc(SuccessfullyPersonState(
            successfullyPersonModelObj: SuccessfullyPersonModel()))
          ..add(SuccessfullyPersonInitialEvent()),
        child: SuccessfullyPersonScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SuccessfullyPersonBloc, SuccessfullyPersonState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              body: Container(
                  width: double.maxFinite,
                  padding:
                      EdgeInsets.symmetric(horizontal: 30.h, vertical: 48.v),
                  child: Column(children: [
                    Spacer(flex: 56),
                    SizedBox(
                        width: 181.h,
                        child: Text("msg_successfully_created".en,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                            style: CustomTextStyles
                                .headlineLargeBakbakOneGreenA700
                                .copyWith(height: 1.08))),
                    Spacer(flex: 43)
                  ])),
              bottomNavigationBar: _buildContinueButton(context)));
    });
  }

  /// Section Widget
  Widget _buildContinueButton(BuildContext context) {
    return CustomElevatedButton(
        text: "lbl_continue".en,
        margin: EdgeInsets.only(left: 30.h, right: 30.h, bottom: 48.v),
        buttonStyle: CustomButtonStyles.none,
        decoration: CustomButtonStyles.gradientBlueGrayToPrimaryTL30Decoration,
        buttonTextStyle: CustomTextStyles.titleMediumOnPrimarySemiBold,
        onPressed: () {
          onTapContinueButton(context);
        });
  }

  /// Navigates to the homePersonScreen when the action is triggered.
  onTapContinueButton(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.homePersonScreen,
    );
  }
}
