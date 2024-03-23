part of 'search_city_bloc.dart';

@freezed
class SearchCityState with _$SearchCityState{
  const factory SearchCityState.failure(DioError error) = _Failure;
  const factory SearchCityState.loading() = _Loading;
  const factory SearchCityState.loaded(CitiesResponse response) = _Loaded;
}
