part of 'delete_ad_bloc.dart';

@freezed
class DeleteAdState with _$DeleteAdState {
  const factory DeleteAdState.initial() = _Initial;
  const factory DeleteAdState.loading() = _Loading;
  const factory DeleteAdState.success() = _Success;
  const factory DeleteAdState.failure(DioException error) = _Failure;
}
