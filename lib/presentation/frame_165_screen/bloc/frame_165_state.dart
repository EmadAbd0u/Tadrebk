// ignore_for_file: must_be_immutable

part of 'frame_165_bloc.dart';

/// Represents the state of Frame165 in the application.
class Frame165State extends Equatable {
  Frame165State({
    this.isSelectedSwitch = false,
    this.frame165ModelObj,
  });

  Frame165Model? frame165ModelObj;

  bool isSelectedSwitch;

  @override
  List<Object?> get props => [
        isSelectedSwitch,
        frame165ModelObj,
      ];
  Frame165State copyWith({
    bool? isSelectedSwitch,
    Frame165Model? frame165ModelObj,
  }) {
    return Frame165State(
      isSelectedSwitch: isSelectedSwitch ?? this.isSelectedSwitch,
      frame165ModelObj: frame165ModelObj ?? this.frame165ModelObj,
    );
  }
}
