part of 'ads_category_bloc.dart';

@freezed
class AdsCategoryState with _$AdsCategoryState {
  const factory AdsCategoryState.initial() = _Initial;
  const factory AdsCategoryState.loading() = _Loading;
  const factory AdsCategoryState.loaded(AdsCategoryResponse response) = _Loaded;
  const factory AdsCategoryState.failure(DioException error) = _Failure;
}
