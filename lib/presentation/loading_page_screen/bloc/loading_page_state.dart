// ignore_for_file: must_be_immutable

part of 'loading_page_bloc.dart';

/// Represents the state of LoadingPage in the application.
class LoadingPageState extends Equatable {
  LoadingPageState({this.loadingPageModelObj});

  LoadingPageModel? loadingPageModelObj;

  @override
  List<Object?> get props => [
        loadingPageModelObj,
      ];
  LoadingPageState copyWith({LoadingPageModel? loadingPageModelObj}) {
    return LoadingPageState(
      loadingPageModelObj: loadingPageModelObj ?? this.loadingPageModelObj,
    );
  }
}
