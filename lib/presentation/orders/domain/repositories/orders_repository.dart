import 'package:dio/dio.dart';
import 'package:either_dart/either.dart';
import 'package:optlove/presentation/orders/domain/enteties/conditions_response.dart';
import 'package:optlove/presentation/orders/domain/enteties/orders_response.dart';

import '../../../../core/standart_post_response.dart';

abstract class OrdersRepository {

  Future<Either<DioError, OrdersResponse>> gerOrders();

  Future<Either<DioError, OrdersResponse>> getOrdersByStatus(String status);

  Future<Either<DioError, OrdersResponse>> getWorkingOrders();

  Future<Either<DioError, OrdersResponse>> getOrderById(String orderId);

  Future<Either<DioError, StandartResponse>> deleteProductFromOrder(String productId, String orderId);

  Future<Either<DioError, ConditionsResponse>> getConditions(String firmId);

  Future<Either<DioError, StandartResponse>> addToCart(String idProduct,
      String count, String name, String firmId, String price);

  Future<Either<DioError, StandartResponse>> cartSendOrder(String orderId,
      String addressId, String deliveryId, String paymentId);
}