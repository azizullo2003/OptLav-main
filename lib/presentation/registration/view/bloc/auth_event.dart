part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {

  const factory AuthEvent.auth({
    required String phone,
    required String password,
    required int os,
  }) = _Auth;


}
