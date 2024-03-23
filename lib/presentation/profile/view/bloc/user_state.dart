part of 'user_bloc.dart';

@freezed
class UserState with _$UserState{
  const factory UserState.failure(DioError error) = _Failure;
  const factory UserState.loading() = _Loading;
  const factory UserState.loaded(UserInfoResponse response) = _Loaded;
  const factory UserState.dataChanged(UserChangeResponse response) = _DataChanged;
  const factory UserState.innLoaded(InnResponse response) = _InnLoaded;
  const factory UserState.userDeleted(UserChangeResponse response) = _UserDeleted;
}
