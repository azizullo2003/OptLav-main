part of 'ads_city_bloc.dart';

@freezed
class AdsCityState with _$AdsCityState {
  const factory AdsCityState.initial() = _Initial;
  const factory AdsCityState.loading() = _Loading;
  const factory AdsCityState.loaded(AdsCityResponse response) = _Loaded;
  const factory AdsCityState.failure(DioException error) = _Failure;
}
