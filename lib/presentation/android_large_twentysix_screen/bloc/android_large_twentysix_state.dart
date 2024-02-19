// ignore_for_file: must_be_immutable

part of 'android_large_twentysix_bloc.dart';

/// Represents the state of AndroidLargeTwentysix in the application.
class AndroidLargeTwentysixState extends Equatable {
  AndroidLargeTwentysixState({
    this.nameController,
    this.cityController,
    this.streetController,
    this.enterTrainingSpecializationController,
    this.enterTrainingCostController,
    this.dateController,
    this.dateController1,
    this.androidLargeTwentysixModelObj,
  });

  TextEditingController? nameController;

  TextEditingController? cityController;

  TextEditingController? streetController;

  TextEditingController? enterTrainingSpecializationController;

  TextEditingController? enterTrainingCostController;

  TextEditingController? dateController;

  TextEditingController? dateController1;

  AndroidLargeTwentysixModel? androidLargeTwentysixModelObj;

  @override
  List<Object?> get props => [
        nameController,
        cityController,
        streetController,
        enterTrainingSpecializationController,
        enterTrainingCostController,
        dateController,
        dateController1,
        androidLargeTwentysixModelObj,
      ];
  AndroidLargeTwentysixState copyWith({
    TextEditingController? nameController,
    TextEditingController? cityController,
    TextEditingController? streetController,
    TextEditingController? enterTrainingSpecializationController,
    TextEditingController? enterTrainingCostController,
    TextEditingController? dateController,
    TextEditingController? dateController1,
    AndroidLargeTwentysixModel? androidLargeTwentysixModelObj,
  }) {
    return AndroidLargeTwentysixState(
      nameController: nameController ?? this.nameController,
      cityController: cityController ?? this.cityController,
      streetController: streetController ?? this.streetController,
      enterTrainingSpecializationController:
          enterTrainingSpecializationController ??
              this.enterTrainingSpecializationController,
      enterTrainingCostController:
          enterTrainingCostController ?? this.enterTrainingCostController,
      dateController: dateController ?? this.dateController,
      dateController1: dateController1 ?? this.dateController1,
      androidLargeTwentysixModelObj:
          androidLargeTwentysixModelObj ?? this.androidLargeTwentysixModelObj,
    );
  }
}
