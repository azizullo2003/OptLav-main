part of 'user_bloc.dart';

@freezed
class UserEvent with _$UserEvent {
  const factory UserEvent.getUserData() = _GetUserData;
  const factory UserEvent.changeUserInfo(List<String> fields,
      List<String> values, List<String> regions) = _ChangeUserInfo;
  const factory UserEvent.innSearch(String inn) = _InnSearch;
  const factory UserEvent.deleteUser() = _DeleteUser;
}
