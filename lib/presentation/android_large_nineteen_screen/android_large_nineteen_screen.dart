import 'bloc/android_large_nineteen_bloc.dart';
import 'models/android_large_nineteen_model.dart';
import 'package:emad_s_application1/core/app_export.dart';
import 'package:emad_s_application1/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class AndroidLargeNineteenScreen extends StatelessWidget {
  const AndroidLargeNineteenScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<AndroidLargeNineteenBloc>(
        create: (context) => AndroidLargeNineteenBloc(AndroidLargeNineteenState(
            androidLargeNineteenModelObj: AndroidLargeNineteenModel()))
          ..add(AndroidLargeNineteenInitialEvent()),
        child: AndroidLargeNineteenScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AndroidLargeNineteenBloc, AndroidLargeNineteenState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              body: Container(
                  width: double.maxFinite,
                  padding:
                      EdgeInsets.symmetric(horizontal: 16.h, vertical: 94.v),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("lbl_password3".en,
                            style: theme.textTheme.headlineLarge),
                        SizedBox(height: 3.v),
                        Text("lbl_changed".en,
                            style: theme.textTheme.headlineLarge),
                        Spacer(flex: 53),
                        Align(
                            alignment: Alignment.center,
                            child: SizedBox(
                                width: 183.h,
                                child: Text("msg_successfully_changed".en,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.center,
                                    style: CustomTextStyles
                                        .headlineLargeBakbakOneGreenA700
                                        .copyWith(height: 1.08)))),
                        Spacer(flex: 46),
                        SizedBox(height: 14.v),
                        CustomElevatedButton(
                            text: "lbl_log_in".en,
                            margin: EdgeInsets.symmetric(horizontal: 14.h),
                            buttonStyle: CustomButtonStyles.none,
                            decoration: CustomButtonStyles
                                .gradientBlueGrayToPrimaryDecoration,
                            onPressed: () {
                              onTapLogIn(context);
                            },
                            alignment: Alignment.center)
                      ]))));
    });
  }

  /// Navigates to the loginPersonScreen when the action is triggered.
  onTapLogIn(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.loginPersonScreen,
    );
  }
}
