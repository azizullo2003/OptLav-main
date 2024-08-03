part of 'ads_subcategory_bloc.dart';

@freezed
class AdsSubcategoryEvent with _$AdsSubcategoryEvent {
  const factory AdsSubcategoryEvent.fetchSubcategoriesByCategoryId(
      String categoryId) = FetchSubcategoriesByCategoryId;
}
