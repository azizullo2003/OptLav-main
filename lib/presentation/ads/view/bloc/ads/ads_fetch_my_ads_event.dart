part of 'ads_fetch_my_ads_bloc.dart';

@freezed
class AdsFetchMyAdsEvent with _$AdsFetchMyAdsEvent {
  const factory AdsFetchMyAdsEvent.fetchMyAds({
    String? sort,
    String? poisk,
  }) = FetchMyAds;
}
