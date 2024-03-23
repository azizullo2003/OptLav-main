import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:optlove/core/standart_post_response.dart';
import 'package:optlove/presentation/orders/domain/enteties/orders_response.dart';
import 'package:optlove/presentation/orders/domain/repositories/orders_repository.dart';

part 'orders_event.dart';
part 'orders_state.dart';
part 'orders_bloc.freezed.dart';

@injectable
class OrdersBloc extends Bloc<OrdersEvent, OrdersState> {
  final OrdersRepository repository;
  OrdersBloc(this.repository) : super(const OrdersState.loading()) {
    on<OrdersEvent>((event, emit) async {
      emit(const OrdersState.loading());
      await event.when<Future<void>>(
        getOrders: () async => (await repository.gerOrders()).fold(
          (l) => emit(OrdersState.failure(l)),
          (r) => emit(OrdersState.loaded(r)),
        ),

        getWorkingOrders: () async =>
            (await repository.getWorkingOrders()).fold(
          (l) => emit(OrdersState.failure(l)),
          (r) => emit(OrdersState.workingOrdersLoaded(r)),
        ),
        getOrderById: (orderId) async =>
            (await repository.getOrderById(orderId)).fold(
          (l) => emit(OrdersState.failure(l)),
          (r) => emit(OrdersState.orderLoaded(r)),
        ),
        deleteProductFromOrder: (productId, orderId) async =>
            (await repository.deleteProductFromOrder(productId, orderId)).fold(
          (l) => emit(OrdersState.failure(l)),
          (r) => emit(OrdersState.deleted(r)),
        ),
        cartSendOrder: (String orderId, String addressId, String deliveryId,
                String paymentId) async =>
            (await repository.cartSendOrder(
                    orderId, addressId, deliveryId, paymentId))
                .fold(
          (l) => emit(OrdersState.failure(l)),
          (r) => emit(OrdersState.orderSent(r)),
        ), getOrdersByStatus: (status) async => (await repository.getOrdersByStatus(status)).fold(
            (l) => emit(OrdersState.failure(l)),
            (r) => emit(OrdersState.loaded(r)),
      ),
      );
    });
  }
}
