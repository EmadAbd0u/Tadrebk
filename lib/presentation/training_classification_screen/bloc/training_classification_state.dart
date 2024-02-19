// ignore_for_file: must_be_immutable

part of 'training_classification_bloc.dart';

/// Represents the state of TrainingClassification in the application.
class TrainingClassificationState extends Equatable {
  TrainingClassificationState({this.trainingClassificationModelObj});

  TrainingClassificationModel? trainingClassificationModelObj;

  @override
  List<Object?> get props => [
        trainingClassificationModelObj,
      ];
  TrainingClassificationState copyWith(
      {TrainingClassificationModel? trainingClassificationModelObj}) {
    return TrainingClassificationState(
      trainingClassificationModelObj:
          trainingClassificationModelObj ?? this.trainingClassificationModelObj,
    );
  }
}
