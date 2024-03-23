part of 'orders_bloc.dart';

@freezed
class OrdersEvent with _$OrdersEvent {
  const factory OrdersEvent.getOrders() = _GetOrders;
  const factory OrdersEvent.getOrdersByStatus(String status) = _GetOrdersByStatus;
  const factory OrdersEvent.getOrderById(String orderId) = _GetOrderById;
  const factory OrdersEvent.deleteProductFromOrder(String productId, String orderId) = _DeleteProductFromOrder;
  const factory OrdersEvent.cartSendOrder(String orderId,
      String addressId, String deliveryId, String paymentId) = _CartSendOrder;
  const factory OrdersEvent.getWorkingOrders() = _GetWorkingOrders;
}
