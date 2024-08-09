part of 'ads_fetch_my_ads_bloc.dart';

@freezed
class AdsFetchMyAdsState with _$AdsFetchMyAdsState {
  const factory AdsFetchMyAdsState.initial() = _Initial;
  const factory AdsFetchMyAdsState.loading() = _Loading;
  const factory AdsFetchMyAdsState.loaded(AdsResponse response) = _Loaded;
  const factory AdsFetchMyAdsState.failure(DioException error) = _Failure;
}
