part of 'ads_category_bloc.dart';

@freezed
class AdsCategoryEvent with _$AdsCategoryEvent {
  const factory AdsCategoryEvent.fetchCategories() = FetchCategories;
}
