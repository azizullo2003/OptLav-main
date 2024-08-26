part of 'ads_bloc.dart';

@freezed
class AdsEvent with _$AdsEvent {
  const factory AdsEvent.fetchAds({
    String? type,
    String? sort,
    String? category,
    String? subCategory,
    bool? my,
    String? userId,
    String? poisk,
  }) = FetchAds;
}
