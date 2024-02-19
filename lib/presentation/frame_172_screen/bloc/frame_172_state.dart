// ignore_for_file: must_be_immutable

part of 'frame_172_bloc.dart';

/// Represents the state of Frame172 in the application.
class Frame172State extends Equatable {
  Frame172State({
    this.nameController,
    this.expirydateController,
    this.frame172ModelObj,
  });

  TextEditingController? nameController;

  TextEditingController? expirydateController;

  Frame172Model? frame172ModelObj;

  @override
  List<Object?> get props => [
        nameController,
        expirydateController,
        frame172ModelObj,
      ];
  Frame172State copyWith({
    TextEditingController? nameController,
    TextEditingController? expirydateController,
    Frame172Model? frame172ModelObj,
  }) {
    return Frame172State(
      nameController: nameController ?? this.nameController,
      expirydateController: expirydateController ?? this.expirydateController,
      frame172ModelObj: frame172ModelObj ?? this.frame172ModelObj,
    );
  }
}
