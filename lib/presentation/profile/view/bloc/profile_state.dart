part of 'profile_bloc.dart';

@freezed
class ProfileState with _$ProfileState{
  const factory ProfileState.failure(DioError error) = _Failure;
  const factory ProfileState.loading() = _Loading;
  const factory ProfileState.loaded(UserInfoResponse response) = _Loaded;
  const factory ProfileState.dataChanged(UserChangeResponse response) = _DataChanged;
  const factory ProfileState.innLoaded(InnResponse response) = _InnLoaded;
  const factory ProfileState.userDeleted(UserChangeResponse response) = _UserDeleted;
}
