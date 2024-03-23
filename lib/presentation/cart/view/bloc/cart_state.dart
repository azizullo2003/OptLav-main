part of 'cart_bloc.dart';

@freezed
class CartState with _$CartState{
  const factory CartState.failure(DioError error) = _Failure;
  const factory CartState.loading() = _Loading;
  const factory CartState.loaded(StandartResponse response) = _Loaded;
  const factory CartState.changed(StandartResponse response) = _Changed;
}
