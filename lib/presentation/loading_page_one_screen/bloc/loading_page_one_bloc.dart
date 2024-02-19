import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:emad_s_application1/presentation/loading_page_one_screen/models/loading_page_one_model.dart';
part 'loading_page_one_event.dart';
part 'loading_page_one_state.dart';

/// A bloc that manages the state of a LoadingPageOne according to the event that is dispatched to it.
class LoadingPageOneBloc
    extends Bloc<LoadingPageOneEvent, LoadingPageOneState> {
  LoadingPageOneBloc(LoadingPageOneState initialState) : super(initialState) {
    on<LoadingPageOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    LoadingPageOneInitialEvent event,
    Emitter<LoadingPageOneState> emit,
  ) async {}
}
