part of 'user_exist_bloc.dart';

@freezed
class UserExistState with _$UserExistState{
  const factory UserExistState.failure(DioError error) = _Failure;
  const factory UserExistState.loading() = _Loading;
  const factory UserExistState.isUserExist(StandartResponse response) = _IsUserExist;
}
