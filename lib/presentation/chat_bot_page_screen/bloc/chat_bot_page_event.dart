// ignore_for_file: must_be_immutable

part of 'chat_bot_page_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ChatBotPage widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ChatBotPageEvent extends Equatable {}

/// Event that is dispatched when the ChatBotPage widget is first created.
class ChatBotPageInitialEvent extends ChatBotPageEvent {
  @override
  List<Object?> get props => [];
}
