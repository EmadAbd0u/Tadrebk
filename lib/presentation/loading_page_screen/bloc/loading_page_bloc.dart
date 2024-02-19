import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:emad_s_application1/presentation/loading_page_screen/models/loading_page_model.dart';
part 'loading_page_event.dart';
part 'loading_page_state.dart';

/// A bloc that manages the state of a LoadingPage according to the event that is dispatched to it.
class LoadingPageBloc extends Bloc<LoadingPageEvent, LoadingPageState> {
  LoadingPageBloc(LoadingPageState initialState) : super(initialState) {
    on<LoadingPageInitialEvent>(_onInitialize);
  }

  _onInitialize(
    LoadingPageInitialEvent event,
    Emitter<LoadingPageState> emit,
  ) async {}
}
