part of 'favorite_bloc.dart';

@freezed
class FavoriteState with _$FavoriteState {
  const factory FavoriteState.failure(DioError error) = _Failure;
  const factory FavoriteState.loading() = _Loading;
  const factory FavoriteState.companiesLoaded(FavoriteResponse response) =
      _CompaniesLoaded;
  const factory FavoriteState.productsLoaded(FavoriteProductsResponse response) =
  _ProductsLoaded;
  const factory FavoriteState.companyAdded(StandartResponse response) =
  _CompanyAdded;
  const factory FavoriteState.productAdded(StandartResponse response) =
  _ProductAdded;
  const factory FavoriteState.productRemoved(StandartResponse response) =
  _ProductRemoved;
  const factory FavoriteState.companyRemoved(StandartResponse response) =
  _CompanyRemoved;
}
