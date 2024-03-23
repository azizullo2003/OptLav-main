part of 'orders_bloc.dart';

@freezed
class OrdersState with _$OrdersState{
  const factory OrdersState.failure(DioError error) = _Failure;
  const factory OrdersState.loading() = _Loading;
  const factory OrdersState.loaded(OrdersResponse response) = _Loaded;
  const factory OrdersState.orderLoaded(OrdersResponse response) = _OrderLoaded;
  const factory OrdersState.deleted(StandartResponse response) = _Deleted;
  const factory OrdersState.orderSent(StandartResponse response) = _OrderSent;
  const factory OrdersState.workingOrdersLoaded(OrdersResponse response) = _WorkingOrdersLoaded;
}