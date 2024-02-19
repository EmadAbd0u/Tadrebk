// ignore_for_file: must_be_immutable

part of 'frame_171_bloc.dart';

/// Represents the state of Frame171 in the application.
class Frame171State extends Equatable {
  Frame171State({this.frame171ModelObj});

  Frame171Model? frame171ModelObj;

  @override
  List<Object?> get props => [
        frame171ModelObj,
      ];
  Frame171State copyWith({Frame171Model? frame171ModelObj}) {
    return Frame171State(
      frame171ModelObj: frame171ModelObj ?? this.frame171ModelObj,
    );
  }
}
