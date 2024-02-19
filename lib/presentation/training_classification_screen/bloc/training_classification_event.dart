// ignore_for_file: must_be_immutable

part of 'training_classification_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///TrainingClassification widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class TrainingClassificationEvent extends Equatable {}

/// Event that is dispatched when the TrainingClassification widget is first created.
class TrainingClassificationInitialEvent extends TrainingClassificationEvent {
  @override
  List<Object?> get props => [];
}
