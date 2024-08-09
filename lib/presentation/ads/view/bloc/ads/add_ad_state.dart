part of 'add_ad_bloc.dart';

@freezed
class AddAdState with _$AddAdState {
  const factory AddAdState.initial() = _Initial;
  const factory AddAdState.loading() = _Loading;
  const factory AddAdState.success(AdsFunctionResponse response) = _Success;
  const factory AddAdState.failure(DioException error) = _Failure;
}
