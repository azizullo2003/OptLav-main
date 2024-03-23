part of 'registration_bloc.dart';

@freezed
class RegistrationState with _$RegistrationState {
  const factory RegistrationState.failure(DioError error) = _Failure;
  const factory RegistrationState.loading() = _Loading;
  const factory RegistrationState.loaded(StandartResponse response) = _Loaded;
}
