import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:emad_s_application1/presentation/chat_bot_page_one_screen/models/chat_bot_page_one_model.dart';
part 'chat_bot_page_one_event.dart';
part 'chat_bot_page_one_state.dart';

/// A bloc that manages the state of a ChatBotPageOne according to the event that is dispatched to it.
class ChatBotPageOneBloc
    extends Bloc<ChatBotPageOneEvent, ChatBotPageOneState> {
  ChatBotPageOneBloc(ChatBotPageOneState initialState) : super(initialState) {
    on<ChatBotPageOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ChatBotPageOneInitialEvent event,
    Emitter<ChatBotPageOneState> emit,
  ) async {}
}
