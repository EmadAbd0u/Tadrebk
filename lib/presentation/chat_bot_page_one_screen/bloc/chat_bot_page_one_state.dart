// ignore_for_file: must_be_immutable

part of 'chat_bot_page_one_bloc.dart';

/// Represents the state of ChatBotPageOne in the application.
class ChatBotPageOneState extends Equatable {
  ChatBotPageOneState({this.chatBotPageOneModelObj});

  ChatBotPageOneModel? chatBotPageOneModelObj;

  @override
  List<Object?> get props => [
        chatBotPageOneModelObj,
      ];
  ChatBotPageOneState copyWith({ChatBotPageOneModel? chatBotPageOneModelObj}) {
    return ChatBotPageOneState(
      chatBotPageOneModelObj:
          chatBotPageOneModelObj ?? this.chatBotPageOneModelObj,
    );
  }
}
