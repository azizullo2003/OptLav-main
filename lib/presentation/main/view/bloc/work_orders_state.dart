part of 'work_orders_bloc.dart';

@freezed
class WorkOrdersState with _$WorkOrdersState{
  const factory WorkOrdersState.failure(DioError error) = _Failure;
  const factory WorkOrdersState.loading() = _Loading;
  const factory WorkOrdersState.workingOrdersLoaded(OrdersResponse response) = _WorkingOrdersLoaded;
}
