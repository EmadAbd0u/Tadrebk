import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:emad_s_application1/presentation/chat_bot_page_screen/models/chat_bot_page_model.dart';
part 'chat_bot_page_event.dart';
part 'chat_bot_page_state.dart';

/// A bloc that manages the state of a ChatBotPage according to the event that is dispatched to it.
class ChatBotPageBloc extends Bloc<ChatBotPageEvent, ChatBotPageState> {
  ChatBotPageBloc(ChatBotPageState initialState) : super(initialState) {
    on<ChatBotPageInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ChatBotPageInitialEvent event,
    Emitter<ChatBotPageState> emit,
  ) async {}
}
