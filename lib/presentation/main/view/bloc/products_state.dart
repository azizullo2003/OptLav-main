part of 'products_bloc.dart';

@freezed
class ProductsState with _$ProductsState{
  const factory ProductsState.failure(DioError error) = _Failure;
  const factory ProductsState.loading() = _Loading;
  const factory ProductsState.loaded(ProductsResponse response) = _Loaded;
}
