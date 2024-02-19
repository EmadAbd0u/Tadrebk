// ignore_for_file: must_be_immutable

part of 'loading_page_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///LoadingPage widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class LoadingPageEvent extends Equatable {}

/// Event that is dispatched when the LoadingPage widget is first created.
class LoadingPageInitialEvent extends LoadingPageEvent {
  @override
  List<Object?> get props => [];
}
