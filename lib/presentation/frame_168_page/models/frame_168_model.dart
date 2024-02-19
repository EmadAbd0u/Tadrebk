// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'userprofile_item_model.dart';

/// This class defines the variables used in the [frame_168_page],
/// and is typically used to hold data that is passed between different parts of the application.
class Frame168Model extends Equatable {
  Frame168Model({this.userprofileItemList = const []}) {}

  List<UserprofileItemModel> userprofileItemList;

  Frame168Model copyWith({List<UserprofileItemModel>? userprofileItemList}) {
    return Frame168Model(
      userprofileItemList: userprofileItemList ?? this.userprofileItemList,
    );
  }

  @override
  List<Object?> get props => [userprofileItemList];
}
