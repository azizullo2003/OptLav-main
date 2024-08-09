part of 'edit_ad_bloc.dart';

@freezed
class EditAdState with _$EditAdState {
  const factory EditAdState.initial() = _Initial;
  const factory EditAdState.loading() = _Loading;
  const factory EditAdState.success(AdsFunctionResponse response) = _Success;
  const factory EditAdState.failure(DioException error) = _Failure;
}
