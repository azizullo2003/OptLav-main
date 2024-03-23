part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState{
  const factory AuthState.failure(DioError error) = _Failure;
  const factory AuthState.loading() = _Loading;
  const factory AuthState.loaded(AuthResponse response) = _Loaded;
}


