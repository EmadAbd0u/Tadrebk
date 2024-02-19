// ignore_for_file: must_be_immutable

part of 'frame_168_bloc.dart';

/// Represents the state of Frame168 in the application.
class Frame168State extends Equatable {
  Frame168State({this.frame168ModelObj});

  Frame168Model? frame168ModelObj;

  @override
  List<Object?> get props => [
        frame168ModelObj,
      ];
  Frame168State copyWith({Frame168Model? frame168ModelObj}) {
    return Frame168State(
      frame168ModelObj: frame168ModelObj ?? this.frame168ModelObj,
    );
  }
}
