import 'dart:io';
import 'package:dio/dio.dart';
import 'package:either_dart/either.dart';
import 'package:injectable/injectable.dart';
import 'package:optlove/presentation/orders/data/datasources/orders_remote_datasource.dart';
import 'package:optlove/presentation/orders/domain/enteties/conditions_response.dart';
import 'package:optlove/presentation/orders/domain/repositories/orders_repository.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../core/failure.dart';
import '../../../../core/standart_post_response.dart';
import '../../../../core/utils/handle_standard_dio_error.dart';
import '../../domain/enteties/orders_response.dart';

@Singleton(as: OrdersRepository)
class OrdersRepositoryImpl implements OrdersRepository {
  final OrdersRemoteDatasource remoteDatasource;

  OrdersRepositoryImpl(
    this.remoteDatasource,
  );

  Future<Either<Failure<void>, T>> handleDioException<T>(
    Future<T> Function() function,
  ) async {
    try {
      return Right(await function());
    } on DioException catch (error) {
      return Left(
        await handleStandardDioError<void>(error)
            .fold((l) => l, (r) => Failure.unknownFailure(r.message)),
      );
    }
  }

  @override
  Future<Either<DioException, OrdersResponse>> gerOrders() async {
    try {
      String userId = "";
      SharedPreferences prefs = await SharedPreferences.getInstance();
      final String? userIdPrefs = prefs.getString('userId');

      if (userIdPrefs != null) {
        userId = userIdPrefs;
      }
      print("DKSMDKSDMSK $userId");
      final httpResponse = await remoteDatasource.getOrders(userId);

      if (httpResponse.response.statusCode == HttpStatus.ok) {
        return Right(httpResponse.data);
      }
      return Left(
        DioException(
          error: httpResponse.response.statusMessage,
          response: httpResponse.response,
          type: DioExceptionType.badResponse,
          requestOptions: RequestOptions(path: "path"),
        ),
      );
    } on DioException catch (e) {
      return Left(e);
    }
  }

  @override
  Future<Either<DioException, OrdersResponse>> getOrdersByStatus(
      String status) async {
    try {
      String userId = "";
      SharedPreferences prefs = await SharedPreferences.getInstance();
      final String? userIdPrefs = prefs.getString('userId');

      if (userIdPrefs != null) {
        userId = userIdPrefs;
      }
      print("DKSMDKSDMSK $userId");
      final httpResponse =
          await remoteDatasource.getOrdersByStatus(userId, status);

      if (httpResponse.response.statusCode == HttpStatus.ok) {
        return Right(httpResponse.data);
      }
      return Left(
        DioException(
          error: httpResponse.response.statusMessage,
          response: httpResponse.response,
          type: DioExceptionType.badResponse,
          requestOptions: RequestOptions(path: "path"),
        ),
      );
    } on DioException catch (e) {
      return Left(e);
    }
  }

  @override
  Future<Either<DioException, OrdersResponse>> getWorkingOrders() async {
    try {
      String userId = "";
      SharedPreferences prefs = await SharedPreferences.getInstance();
      final String? userIdPrefs = prefs.getString('userId');
      if (userIdPrefs != null) {
        userId = userIdPrefs;
      }

      final httpResponse = await remoteDatasource.getWorkingOrders(userId);

      if (httpResponse.response.statusCode == HttpStatus.ok) {
        return Right(httpResponse.data);
      }
      return Left(
        DioException(
          error: httpResponse.response.statusMessage,
          response: httpResponse.response,
          type: DioExceptionType.badResponse,
          requestOptions: RequestOptions(path: "path"),
        ),
      );
    } on DioException catch (e) {
      return Left(e);
    }
  }

  @override
  Future<Either<DioException, OrdersResponse>> getOrderById(
      String orderId) async {
    print("getOrderById $orderId");
    try {
      String userId = "";
      SharedPreferences prefs = await SharedPreferences.getInstance();
      final String? userIdPrefs = prefs.getString('userId');
      if (userIdPrefs != null) {
        userId = userIdPrefs;
      }

      final httpResponse = await remoteDatasource.getOrderById(userId, orderId);

      if (httpResponse.response.statusCode == HttpStatus.ok) {
        return Right(httpResponse.data);
      }
      return Left(
        DioException(
          error: httpResponse.response.statusMessage,
          response: httpResponse.response,
          type: DioExceptionType.badResponse,
          requestOptions: RequestOptions(path: "path"),
        ),
      );
    } on DioException catch (e) {
      return Left(e);
    }
  }

  @override
  Future<Either<DioException, StandartResponse>> deleteProductFromOrder(
      String productId, String orderId) async {
    try {
      String userId = "";
      SharedPreferences prefs = await SharedPreferences.getInstance();
      final String? userIdPrefs = prefs.getString('userId');
      if (userIdPrefs != null) {
        userId = userIdPrefs;
      }

      print("Del prod $userId $productId $orderId");

      final httpResponse = await remoteDatasource.deleteProductFromOrder(
          userId, productId, orderId);

      if (httpResponse.response.statusCode == HttpStatus.ok) {
        return Right(httpResponse.data);
      }

      print("DELETEsss error");
      return Left(
        DioException(
          error: httpResponse.response.statusMessage,
          response: httpResponse.response,
          type: DioExceptionType.badResponse,
          requestOptions: RequestOptions(path: "path"),
        ),
      );
    } on DioException catch (e) {
      print("DELETEsss ${e.message}");
      return Left(e);
    }
  }

  @override
  Future<Either<DioException, ConditionsResponse>> getConditions(
      String firmId) async {
    try {
      String userId = "";
      SharedPreferences prefs = await SharedPreferences.getInstance();
      final String? userIdPrefs = prefs.getString('userId');
      if (userIdPrefs != null) {
        userId = userIdPrefs;
      }

      print("DELIVER ID $firmId");
      final httpResponse = await remoteDatasource.getConditions(userId, firmId);

      if (httpResponse.response.statusCode == HttpStatus.ok) {
        return Right(httpResponse.data);
      }

      return Left(
        DioException(
          error: httpResponse.response.statusMessage,
          response: httpResponse.response,
          type: DioExceptionType.badResponse,
          requestOptions: RequestOptions(path: "path"),
        ),
      );
    } on DioException catch (e) {
      print("DELETEsss ${e.message}");
      return Left(e);
    }
  }

  @override
  Future<Either<DioException, StandartResponse>> addToCart(String idProduct,
      String count, String name, String firmId, String price) async {
    try {
      String userId = "";
      SharedPreferences prefs = await SharedPreferences.getInstance();
      final String? userIdPrefs = prefs.getString('userId');
      if (userIdPrefs != null) {
        userId = userIdPrefs;
      }

      final httpResponse = await remoteDatasource.addToCart(
          idProduct, count, name, userId, firmId, price);

      if (httpResponse.response.statusCode == HttpStatus.ok) {
        return Right(httpResponse.data);
      }

      print("DELETEsss error");
      return Left(
        DioException(
          error: httpResponse.response.statusMessage,
          response: httpResponse.response,
          type: DioExceptionType.badResponse,
          requestOptions: RequestOptions(path: "path"),
        ),
      );
    } on DioException catch (e) {
      return Left(e);
    }
  }

  @override
  Future<Either<DioException, StandartResponse>> cartSendOrder(String orderId,
      String addressId, String deliveryId, String paymentId) async {
    try {
      String userId = "";
      SharedPreferences prefs = await SharedPreferences.getInstance();
      final String? userIdPrefs = prefs.getString('userId');
      if (userIdPrefs != null) {
        userId = userIdPrefs;
      }

      print("Cart SEND $userId $orderId $addressId $deliveryId $paymentId");

      final httpResponse = await remoteDatasource.cartSendOrder(
          userId, orderId, addressId, deliveryId, paymentId);

      if (httpResponse.response.statusCode == HttpStatus.ok) {
        return Right(httpResponse.data);
      }

      print("DELETEsss error");
      return Left(
        DioException(
          error: httpResponse.response.statusMessage,
          response: httpResponse.response,
          type: DioExceptionType.badResponse,
          requestOptions: RequestOptions(path: "path"),
        ),
      );
    } on DioException catch (e) {
      print("DELETEsss ${e.message}");
      return Left(e);
    }
  }
}
