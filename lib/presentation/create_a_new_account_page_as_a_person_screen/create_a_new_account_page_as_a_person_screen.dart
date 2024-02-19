import 'bloc/create_a_new_account_page_as_a_person_bloc.dart';
import 'models/create_a_new_account_page_as_a_person_model.dart';
import 'package:emad_s_application1/core/app_export.dart';
import 'package:emad_s_application1/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class CreateANewAccountPageAsAPersonScreen extends StatelessWidget {
  const CreateANewAccountPageAsAPersonScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<CreateANewAccountPageAsAPersonBloc>(
        create: (context) => CreateANewAccountPageAsAPersonBloc(
            CreateANewAccountPageAsAPersonState(
                createANewAccountPageAsAPersonModelObj:
                    CreateANewAccountPageAsAPersonModel()))
          ..add(CreateANewAccountPageAsAPersonInitialEvent()),
        child: CreateANewAccountPageAsAPersonScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CreateANewAccountPageAsAPersonBloc,
        CreateANewAccountPageAsAPersonState>(builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              body: Container(
                  width: double.maxFinite,
                  padding:
                      EdgeInsets.symmetric(horizontal: 28.h, vertical: 80.v),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Spacer(flex: 55),
                        SizedBox(
                            width: 181.h,
                            child: Text("msg_successfully_created".en,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.center,
                                style: CustomTextStyles
                                    .headlineLargeBakbakOneGreenA700
                                    .copyWith(height: 1.08))),
                        Spacer(flex: 44),
                        CustomElevatedButton(
                            text: "lbl_continue".en,
                            buttonStyle: CustomButtonStyles.none,
                            decoration: CustomButtonStyles
                                .gradientBlueGrayToPrimaryTL30Decoration,
                            buttonTextStyle:
                                CustomTextStyles.titleMediumOnPrimarySemiBold,
                            onPressed: () {
                              onTapContinue(context);
                            })
                      ]))));
    });
  }

  /// Navigates to the loginPageAsCompanyScreen when the action is triggered.
  onTapContinue(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.loginPageAsCompanyScreen,
    );
  }
}
