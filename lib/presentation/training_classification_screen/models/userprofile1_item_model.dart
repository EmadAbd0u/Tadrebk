import '../../../core/app_export.dart';

/// This class is used in the [userprofile1_item_widget] screen.
class Userprofile1ItemModel {
  Userprofile1ItemModel({
    this.companyName,
    this.trainingText,
    this.locationText,
    this.reviewsText,
    this.priceText,
    this.id,
  }) {
    companyName = companyName ?? "Vodafone";
    trainingText = trainingText ?? "Price Training ";
    locationText = locationText ?? "Cairo ,Talat Harb Street";
    reviewsText = reviewsText ?? "80 Reviews";
    priceText = priceText ?? "180L.E";
    id = id ?? "";
  }

  String? companyName;

  String? trainingText;

  String? locationText;

  String? reviewsText;

  String? priceText;

  String? id;
}
