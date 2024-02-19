// android_large_twentyfour_state.dart

part of 'android_large_twentyfour_bloc.dart';

class AndroidLargeTwentyfourState extends Equatable {
  AndroidLargeTwentyfourState(
      {this.androidLargeTwentyfourModelObj, this.currentPage = 0});

  OnboardindScreenOneModel? androidLargeTwentyfourModelObj;
  final int currentPage;

  @override
  List<Object?> get props => [
    androidLargeTwentyfourModelObj,
    currentPage,
  ];

  AndroidLargeTwentyfourState copyWith({
    OnboardindScreenOneModel? OnboardindScreenOneModel,
    int? currentPage,
  }) {
    return AndroidLargeTwentyfourState(
      androidLargeTwentyfourModelObj:
      androidLargeTwentyfourModelObj ?? this.androidLargeTwentyfourModelObj,
      currentPage: currentPage ?? this.currentPage,
    );
  }
}
