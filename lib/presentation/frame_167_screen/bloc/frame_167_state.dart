// ignore_for_file: must_be_immutable

part of 'frame_167_bloc.dart';

/// Represents the state of Frame167 in the application.
class Frame167State extends Equatable {
  Frame167State({this.frame167ModelObj});

  Frame167Model? frame167ModelObj;

  @override
  List<Object?> get props => [
        frame167ModelObj,
      ];
  Frame167State copyWith({Frame167Model? frame167ModelObj}) {
    return Frame167State(
      frame167ModelObj: frame167ModelObj ?? this.frame167ModelObj,
    );
  }
}
