part of 'ads_subcategory_bloc.dart';

@freezed
class AdsSubcategoryState with _$AdsSubcategoryState {
  const factory AdsSubcategoryState.initial() = _Initial;
  const factory AdsSubcategoryState.loading() = _Loading;
  const factory AdsSubcategoryState.loaded(AdsCategoryResponse response) =
      _Loaded;
  const factory AdsSubcategoryState.failure(DioError error) = _Failure;
}
