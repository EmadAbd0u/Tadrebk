// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'userprofile2_item_model.dart';

/// This class defines the variables used in the [frame_164_page],
/// and is typically used to hold data that is passed between different parts of the application.
class Frame164Model extends Equatable {
  Frame164Model({this.userprofile2ItemList = const []}) {}

  List<Userprofile2ItemModel> userprofile2ItemList;

  Frame164Model copyWith({List<Userprofile2ItemModel>? userprofile2ItemList}) {
    return Frame164Model(
      userprofile2ItemList: userprofile2ItemList ?? this.userprofile2ItemList,
    );
  }

  @override
  List<Object?> get props => [userprofile2ItemList];
}
