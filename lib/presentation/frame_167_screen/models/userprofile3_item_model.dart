import '../../../core/app_export.dart';

/// This class is used in the [userprofile3_item_widget] screen.
class Userprofile3ItemModel {
  Userprofile3ItemModel({
    this.constructionImage,
    this.groupImage,
    this.constructionText,
    this.locationText,
    this.reviewsText,
    this.priceText,
    this.priceValue,
    this.id,
  }) {
    constructionImage = constructionImage ?? ImageConstant.imgRectangle232;
    groupImage = groupImage ?? ImageConstant.imgGroup39;
    constructionText = constructionText ?? "Al Abd Construction";
    locationText = locationText ?? "Cairo ,Talat Harb Street";
    reviewsText = reviewsText ?? "80 Reviews";
    priceText = priceText ?? "Training Price ";
    priceValue = priceValue ?? "180L.E";
    id = id ?? "";
  }

  String? constructionImage;

  String? groupImage;

  String? constructionText;

  String? locationText;

  String? reviewsText;

  String? priceText;

  String? priceValue;

  String? id;
}
