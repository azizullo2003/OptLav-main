part of 'ads_city_bloc.dart';

@freezed
class AdsCityEvent with _$AdsCityEvent {
  const factory AdsCityEvent.fetchCategories({required String cityId}) =
      FetchCity;
}
