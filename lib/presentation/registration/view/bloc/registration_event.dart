part of 'registration_bloc.dart';

@freezed
class RegistrationEvent with _$RegistrationEvent {

  const factory RegistrationEvent.register({
    required String phone,
    required String email,
    required String city_id,
    required String city,
    required int os
  }) = _Register;

  const factory RegistrationEvent.restorePass({
    required String phone,
  }) = _RestorePass;

}
