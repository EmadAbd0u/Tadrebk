// ignore_for_file: must_be_immutable

part of 'chat_bot_page_bloc.dart';

/// Represents the state of ChatBotPage in the application.
class ChatBotPageState extends Equatable {
  ChatBotPageState({this.chatBotPageModelObj});

  ChatBotPageModel? chatBotPageModelObj;

  @override
  List<Object?> get props => [
        chatBotPageModelObj,
      ];
  ChatBotPageState copyWith({ChatBotPageModel? chatBotPageModelObj}) {
    return ChatBotPageState(
      chatBotPageModelObj: chatBotPageModelObj ?? this.chatBotPageModelObj,
    );
  }
}
