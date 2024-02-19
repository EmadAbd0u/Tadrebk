import '../../../core/app_export.dart';

/// This class is used in the [userprofile2_item_widget] screen.
class Userprofile2ItemModel {
  Userprofile2ItemModel({
    this.companyName,
    this.acceptanceMessage,
    this.id,
  }) {
    companyName = companyName ?? "Al Abd Contracting";
    acceptanceMessage =
        acceptanceMessage ?? "He was accepted into Al-Abd Contracting Company";
    id = id ?? "";
  }

  String? companyName;

  String? acceptanceMessage;

  String? id;
}
