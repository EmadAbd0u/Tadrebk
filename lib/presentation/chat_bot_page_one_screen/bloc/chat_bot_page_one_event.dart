// ignore_for_file: must_be_immutable

part of 'chat_bot_page_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ChatBotPageOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ChatBotPageOneEvent extends Equatable {}

/// Event that is dispatched when the ChatBotPageOne widget is first created.
class ChatBotPageOneInitialEvent extends ChatBotPageOneEvent {
  @override
  List<Object?> get props => [];
}
