// ignore_for_file: must_be_immutable

part of 'frame_174_bloc.dart';

/// Represents the state of Frame174 in the application.
class Frame174State extends Equatable {
  Frame174State({this.frame174ModelObj});

  Frame174Model? frame174ModelObj;

  @override
  List<Object?> get props => [
        frame174ModelObj,
      ];
  Frame174State copyWith({Frame174Model? frame174ModelObj}) {
    return Frame174State(
      frame174ModelObj: frame174ModelObj ?? this.frame174ModelObj,
    );
  }
}
