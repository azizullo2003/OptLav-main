part of 'search_bloc.dart';

@freezed
class SearchState with _$SearchState {
  const factory SearchState.failure(DioError error) = _Failure;
  const factory SearchState.loading() = _Loading;
  const factory SearchState.categoriesLoaded(CategoriesResponse response) =
      _CategoriesLoaded;
  const factory SearchState.subcategoriesLoaded(
      SubcategoriesResponse response) = _SubcategoriesLoaded;

  const factory SearchState.productsLoaded(ProductsResponse response) =
      _ProductsLoaded;
  const factory SearchState.companiesLoaded(List<CompaniesResponse> response) =
      _CompaniesLoaded;
  const factory SearchState.companiesFounded(List<CompaniesResponse> response) =
      _CompaniesFounded;
  const factory SearchState.productsFounded(ProductsResponse response) =
      _ProductsFounded;
}
