part of 'profile_bloc.dart';

@freezed
class ProfileEvent with _$ProfileEvent {
  const factory ProfileEvent.getUserData() = _GetUserData;
  const factory ProfileEvent.changeUserInfo(List<String> fields,
      List<String> values, List<String> regions) = _ChangeUserInfo;
  const factory ProfileEvent.innSearch(String inn) = _InnSearch;
  const factory ProfileEvent.deleteUser() = _DeleteUser;
}
