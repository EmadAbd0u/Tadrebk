// ignore_for_file: must_be_immutable

part of 'android_large_twenty_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///AndroidLargeTwenty widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class AndroidLargeTwentyEvent extends Equatable {}

/// Event that is dispatched when the AndroidLargeTwenty widget is first created.
class AndroidLargeTwentyInitialEvent extends AndroidLargeTwentyEvent {
  @override
  List<Object?> get props => [];
}

///event for OTP auto fill
class ChangeOTPEvent extends AndroidLargeTwentyEvent {
  ChangeOTPEvent({required this.code});

  String code;

  @override
  List<Object?> get props => [
        code,
      ];
}
