part of 'support_bloc.dart';

@freezed
class SupportEvent with _$SupportEvent {
  const factory SupportEvent.sendMessage(String email, String message) = _SendMessage;
}
