// ignore_for_file: must_be_immutable

part of 'loading_page_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///LoadingPageOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class LoadingPageOneEvent extends Equatable {}

/// Event that is dispatched when the LoadingPageOne widget is first created.
class LoadingPageOneInitialEvent extends LoadingPageOneEvent {
  @override
  List<Object?> get props => [];
}
