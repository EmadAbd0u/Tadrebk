// ignore_for_file: must_be_immutable

part of 'home_person_bloc.dart';

/// Represents the state of HomePerson in the application.
class HomePersonState extends Equatable {
  HomePersonState({
    this.searchController,
    this.homePersonModelObj,
  });

  TextEditingController? searchController;

  HomePersonModel? homePersonModelObj;

  @override
  List<Object?> get props => [
        searchController,
        homePersonModelObj,
      ];
  HomePersonState copyWith({
    TextEditingController? searchController,
    HomePersonModel? homePersonModelObj,
  }) {
    return HomePersonState(
      searchController: searchController ?? this.searchController,
      homePersonModelObj: homePersonModelObj ?? this.homePersonModelObj,
    );
  }
}
