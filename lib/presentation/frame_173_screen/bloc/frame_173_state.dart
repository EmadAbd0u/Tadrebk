// ignore_for_file: must_be_immutable

part of 'frame_173_bloc.dart';

/// Represents the state of Frame173 in the application.
class Frame173State extends Equatable {
  Frame173State({this.frame173ModelObj});

  Frame173Model? frame173ModelObj;

  @override
  List<Object?> get props => [
        frame173ModelObj,
      ];
  Frame173State copyWith({Frame173Model? frame173ModelObj}) {
    return Frame173State(
      frame173ModelObj: frame173ModelObj ?? this.frame173ModelObj,
    );
  }
}
