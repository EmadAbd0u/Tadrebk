import '../../../core/app_export.dart';

/// This class is used in the [userprofile4_item_widget] screen.
class Userprofile4ItemModel {
  Userprofile4ItemModel({
    this.userName,
    this.requestText,
    this.locationText,
    this.acceptText,
    this.rejectText,
    this.viewProfileText,
    this.id,
  }) {
    userName = userName ?? "Yousef Sayed";
    requestText = requestText ?? "Request to apply for this training";
    locationText = locationText ?? "Cairo,Talat Harb Street,Egypt ";
    acceptText = acceptText ?? "Accept";
    rejectText = rejectText ?? "Reject";
    viewProfileText = viewProfileText ?? "View Profile";
    id = id ?? "";
  }

  String? userName;

  String? requestText;

  String? locationText;

  String? acceptText;

  String? rejectText;

  String? viewProfileText;

  String? id;
}
