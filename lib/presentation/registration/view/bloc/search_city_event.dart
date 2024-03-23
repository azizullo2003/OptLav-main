part of 'search_city_bloc.dart';

@freezed
class SearchCityEvent with _$SearchCityEvent {

  const factory SearchCityEvent.searchCity({
    required String city,
  }) = _SearchCity;


}
