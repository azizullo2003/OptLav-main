part of 'support_bloc.dart';

@freezed
class SupportState with _$SupportState{
  const factory SupportState.failure(DioError error) = _Failure;
  const factory SupportState.loading() = _Loading;
  const factory SupportState.messageSent(StandartResponse response) = _MessageSent;
}