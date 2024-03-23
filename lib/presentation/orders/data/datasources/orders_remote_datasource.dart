import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:optlove/core/standart_post_response.dart';
import 'package:retrofit/dio.dart';
import 'package:retrofit/http.dart';

import '../../../../core/constants.dart';
import '../../domain/enteties/conditions_response.dart';
import '../../domain/enteties/orders_response.dart';

part 'orders_remote_datasource.g.dart';

@singleton
class OrdersRemoteDatasource {
  final OrdersApi api;

  OrdersRemoteDatasource(this.api);

  Future<HttpResponse<OrdersResponse>> getOrders(
      String userId,
      ) => api.getOrders(userId);

  Future<HttpResponse<OrdersResponse>> getOrdersByStatus(
      String userId,
      String status
      ) => api.getOrdersByStatus(userId, status);

  Future<HttpResponse<OrdersResponse>> getWorkingOrders(
      String userId,
      ) => api.getWorkingOrders(userId);

  Future<HttpResponse<OrdersResponse>> getOrderById(
      String userId, String orderId
      ) => api.getOrderById(userId, orderId);

  Future<HttpResponse<StandartResponse>> deleteProductFromOrder(
      String userId, String productId, String orderId
      ) => api.deleteProductFromOrder(userId, productId, orderId);

  Future<HttpResponse<ConditionsResponse>> getConditions(
      String userId, String firmId
      ) => api.getConditions(userId, firmId);

  Future<HttpResponse<StandartResponse>> addToCart(
      String idProduct, String count, String name, String userId, String firmId, String price
      ) => api.addToCart(idProduct, count, name, userId, firmId, price);

  Future<HttpResponse<StandartResponse>> cartSendOrder(
  String userId, String orderId, String addressId, String deliveryId, String paymentId
      ) => api.cartSendOrder(userId, orderId, addressId, deliveryId, paymentId);

}

@RestApi(baseUrl: apiBaseUrl)
@singleton
abstract class OrdersApi {
  @factoryMethod
  factory OrdersApi(Dio dio) => _OrdersApi(dio);

  @GET('https://panel.optlav.ru/api4.php?action=cart_view')
  Future<HttpResponse<OrdersResponse>> getOrders(
      @Query("user_id") String userId);

  @GET('https://panel.optlav.ru/api4.php?action=cart_view')
  Future<HttpResponse<OrdersResponse>> getOrdersByStatus(
      @Query("user_id") String userId,
      @Query("status_id") String status);

  @GET('https://panel.optlav.ru/api4.php?action=cart_status')
  Future<HttpResponse<OrdersResponse>> getWorkingOrders(
      @Query("user_id") String userId);

  @GET('https://panel.optlav.ru/api4.php?action=cart_view')
  Future<HttpResponse<OrdersResponse>> getOrderById(
      @Query("user_id") String userId,
      @Query("order_id") String orderId);

  @GET('https://panel.optlav.ru/api4.php?action=delivery')
  Future<HttpResponse<ConditionsResponse>> getConditions(
      @Query("user_id") String userId,
      @Query("firm_id") String firmId);

  @POST('https://panel.optlav.ru/api4.php?action=cart_del')
  @FormUrlEncoded()
  Future<HttpResponse<StandartResponse>> deleteProductFromOrder(
      @Field("user_id") String userId,
      @Field("id_product") String productId,
      @Field("application_id") String orderId,
      );

  @POST('https://panel.optlav.ru/api4.php?action=cart_add')
  @FormUrlEncoded()
  Future<HttpResponse<StandartResponse>> addToCart(
      @Field("id_product") String idProduct,
      @Field("count") String count,
      @Field("name") String name,
      @Field("user_id") String userId,
      @Field("firm_id") String firmId,
      @Field("price") String price,
      );

  @POST('https://panel.optlav.ru/api4.php?action=cart_send_order')
  @FormUrlEncoded()
  Future<HttpResponse<StandartResponse>> cartSendOrder(
      @Query("user_id") String userId,
      @Query("application_id") String orderId,
      @Query("address") String addressId,
      @Query("delivery_id") String deliveryId,
      @Query("payment_id") String paymentId,
      );

}