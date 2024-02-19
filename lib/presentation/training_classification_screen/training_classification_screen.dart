import '../training_classification_screen/widgets/userprofile1_item_widget.dart';
import 'bloc/training_classification_bloc.dart';
import 'models/training_classification_model.dart';
import 'models/userprofile1_item_model.dart';
import 'package:emad_s_application1/core/app_export.dart';
import 'package:emad_s_application1/widgets/app_bar/appbar_leading_image.dart';
import 'package:emad_s_application1/widgets/app_bar/appbar_subtitle.dart';
import 'package:emad_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class TrainingClassificationScreen extends StatelessWidget {
  const TrainingClassificationScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<TrainingClassificationBloc>(
        create: (context) => TrainingClassificationBloc(
            TrainingClassificationState(
                trainingClassificationModelObj: TrainingClassificationModel()))
          ..add(TrainingClassificationInitialEvent()),
        child: TrainingClassificationScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                margin: EdgeInsets.symmetric(horizontal: 16.h),
                padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 19.v),
                decoration: AppDecoration.outlineGray
                    .copyWith(borderRadius: BorderRadiusStyle.roundedBorder16),
                child: BlocSelector<
                        TrainingClassificationBloc,
                        TrainingClassificationState,
                        TrainingClassificationModel?>(
                    selector: (state) => state.trainingClassificationModelObj,
                    builder: (context, trainingClassificationModelObj) {
                      return ListView.separated(
                          physics: BouncingScrollPhysics(),
                          shrinkWrap: true,
                          separatorBuilder: (context, index) {
                            return SizedBox(height: 17.v);
                          },
                          itemCount: trainingClassificationModelObj
                                  ?.userprofile1ItemList.length ??
                              0,
                          itemBuilder: (context, index) {
                            Userprofile1ItemModel model =
                                trainingClassificationModelObj
                                        ?.userprofile1ItemList[index] ??
                                    Userprofile1ItemModel();
                            return Userprofile1ItemWidget(model);
                          });
                    }))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 61.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgGroup199,
            margin: EdgeInsets.only(left: 24.h, top: 23.v, bottom: 234.v),
            onTap: () {
              onTapImage(context);
            }),
        centerTitle: true,
        title: AppbarSubtitle(
            text: "lbl_programming_56".en,
            margin: EdgeInsets.only(top: 28.v, bottom: 241.v)),
        styleType: Style.bgFill);
  }

  /// Navigates to the homePersonScreen when the action is triggered.
  onTapImage(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.homePersonScreen,
    );
  }
}
