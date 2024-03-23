part of 'favorite_bloc.dart';

@freezed
class FavoriteEvent with _$FavoriteEvent {
  const factory FavoriteEvent.getFavoriteCompanies() = _GetFavoriteCompanies;
  const factory FavoriteEvent.getFavoriteProducts() = _GetFavoriteProducts;
  const factory FavoriteEvent.addToFavorite(String firmId) = _AddToFavorite;
  const factory FavoriteEvent.addProductToFavorite(
      String firmId, String productId) = _AddProductToFavorite;
  const factory FavoriteEvent.removeProductFromFavorite(
      String firmId, String productId) = _RemoveProductFromFavorite;
  const factory FavoriteEvent.removeFromFavorite(String firmId) =
      _RemoveFromFavorite;
}
