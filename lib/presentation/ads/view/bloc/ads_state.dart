part of 'ads_bloc.dart';

@freezed
class AdsState with _$AdsState {
  const factory AdsState.initial() = _Initial;
  const factory AdsState.loading() = _Loading;
  const factory AdsState.loaded(AdsResponse response) = _Loaded;
  const factory AdsState.failure(DioException error) = _Failure;
}
