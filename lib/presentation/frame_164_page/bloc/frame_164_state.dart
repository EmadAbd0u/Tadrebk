// ignore_for_file: must_be_immutable

part of 'frame_164_bloc.dart';

/// Represents the state of Frame164 in the application.
class Frame164State extends Equatable {
  Frame164State({this.frame164ModelObj});

  Frame164Model? frame164ModelObj;

  @override
  List<Object?> get props => [
        frame164ModelObj,
      ];
  Frame164State copyWith({Frame164Model? frame164ModelObj}) {
    return Frame164State(
      frame164ModelObj: frame164ModelObj ?? this.frame164ModelObj,
    );
  }
}
