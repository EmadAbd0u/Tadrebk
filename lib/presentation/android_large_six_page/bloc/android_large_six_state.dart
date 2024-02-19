// ignore_for_file: must_be_immutable

part of 'android_large_six_bloc.dart';

/// Represents the state of AndroidLargeSix in the application.
class AndroidLargeSixState extends Equatable {
  AndroidLargeSixState({
    this.searchController,
    this.androidLargeSixModelObj,
  });

  TextEditingController? searchController;

  AndroidLargeSixModel? androidLargeSixModelObj;

  @override
  List<Object?> get props => [
        searchController,
        androidLargeSixModelObj,
      ];
  AndroidLargeSixState copyWith({
    TextEditingController? searchController,
    AndroidLargeSixModel? androidLargeSixModelObj,
  }) {
    return AndroidLargeSixState(
      searchController: searchController ?? this.searchController,
      androidLargeSixModelObj:
          androidLargeSixModelObj ?? this.androidLargeSixModelObj,
    );
  }
}
