// ignore_for_file: must_be_immutable

part of 'loading_page_one_bloc.dart';

/// Represents the state of LoadingPageOne in the application.
class LoadingPageOneState extends Equatable {
  LoadingPageOneState({this.loadingPageOneModelObj});

  LoadingPageOneModel? loadingPageOneModelObj;

  @override
  List<Object?> get props => [
        loadingPageOneModelObj,
      ];
  LoadingPageOneState copyWith({LoadingPageOneModel? loadingPageOneModelObj}) {
    return LoadingPageOneState(
      loadingPageOneModelObj:
          loadingPageOneModelObj ?? this.loadingPageOneModelObj,
    );
  }
}
