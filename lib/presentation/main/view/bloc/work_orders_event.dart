part of 'work_orders_bloc.dart';

@freezed
class WorkOrdersEvent with _$WorkOrdersEvent {
  const factory WorkOrdersEvent.getWorkingOrders() = _GetWorkingOrders;
}
