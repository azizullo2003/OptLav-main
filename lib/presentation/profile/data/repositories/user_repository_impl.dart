import 'dart:io';

import 'package:dio/dio.dart';
import 'package:either_dart/either.dart';
import 'package:injectable/injectable.dart';
import 'package:optlove/core/standart_post_response.dart';
import 'package:optlove/presentation/profile/data/datasources/user_remote_datasource.dart';
import 'package:optlove/presentation/profile/domain/models/inn_response.dart';
import 'package:optlove/presentation/profile/domain/models/user_change_response.dart';
import 'package:optlove/presentation/profile/domain/repositories/user_repository.dart';
import 'package:optlove/presentation/registration/domain/entities/user_info_response.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../core/failure.dart';
import '../../../../core/utils/handle_standard_dio_error.dart';

@Singleton(as: UserRepository)
class UserRepositoryImpl implements UserRepository {
  final UserRemoteDatasource remoteDatasource;

  UserRepositoryImpl(
    this.remoteDatasource,
  );

  Future<Either<Failure<void>, T>> handleDioError<T>(
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
  Future<Either<DioException, UserInfoResponse>> getUserInfo() async {
    try {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      final String? phone = prefs.getString('phone');
      String userId = "";
      final String? userIdPrefs = prefs.getString('userId');
      if (userIdPrefs != null) {
        userId = userIdPrefs;
      }
      print("USER INFO ${phone!}  $userId");
      final httpResponse = await remoteDatasource.getUserInfo(phone, userId);

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
  Future<Either<DioException, UserChangeResponse>> changeUserInfo(
      List<String> fields, List<String> values, List<String> regions) async {
    try {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      final String? userId = prefs.getString('userId');
      // print("fields " + fields.toString());
      // print("values " + values.toString());
      // print("regions " + regions.toString());
      final httpResponse = await remoteDatasource.changeUserInfo(
          userId, fields, values, regions);

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
  Future<Either<DioException, InnResponse>> innSearch(String inn) async {
    try {
      final httpResponse = await remoteDatasource.innSearch(inn);

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
  Future<Either<DioException, UserChangeResponse>> deleteUser() async {
    try {
      String userId = "";
      SharedPreferences prefs = await SharedPreferences.getInstance();
      final String? userIdPrefs = prefs.getString('userId');
      if (userIdPrefs != null) {
        userId = userIdPrefs;
      }
      final httpResponse =
          await remoteDatasource.deleteUser(userId, "bx1t6SWmYcHm");

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
  Future<Either<DioException, StandartResponse>> addToFavorite(
      String firmId) async {
    try {
      String userId = "";
      SharedPreferences prefs = await SharedPreferences.getInstance();
      final String? userIdPrefs = prefs.getString('userId');
      if (userIdPrefs != null) {
        userId = userIdPrefs;
      }
      final httpResponse =
          await remoteDatasource.addToFavorite(userId, firmId, 1);

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
  Future<Either<DioException, StandartResponse>> removeFromFavorite(
      String firmId) async {
    try {
      String userId = "";
      SharedPreferences prefs = await SharedPreferences.getInstance();
      final String? userIdPrefs = prefs.getString('userId');
      if (userIdPrefs != null) {
        userId = userIdPrefs;
      }
      final httpResponse =
          await remoteDatasource.removeFromFavorite(userId, firmId, 1);

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
  Future<Either<DioException, StandartResponse>> addProductToFavorite(
      String firmId, String productId) async {
    try {
      String userId = "";
      SharedPreferences prefs = await SharedPreferences.getInstance();
      final String? userIdPrefs = prefs.getString('userId');
      if (userIdPrefs != null) {
        userId = userIdPrefs;
      }
      print("Fav Add $userId $productId $firmId");
      final httpResponse = await remoteDatasource.addProductToFavorite(
          userId, productId, firmId, 1);

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
  Future<Either<DioException, StandartResponse>> removeProductFromFavorite(
      String firmId, String productId) async {
    try {
      String userId = "";
      SharedPreferences prefs = await SharedPreferences.getInstance();
      final String? userIdPrefs = prefs.getString('userId');
      if (userIdPrefs != null) {
        userId = userIdPrefs;
      }
      final httpResponse = await remoteDatasource.removeProductFromFavorite(
          userId, productId, firmId, 1);

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
  Future<Either<DioException, StandartResponse>> getUserExist() async {
    try {
      String userId = "";
      SharedPreferences prefs = await SharedPreferences.getInstance();
      final String? userIdPrefs = prefs.getString('userId');
      if (userIdPrefs != null) {
        userId = userIdPrefs;
      }

      final httpResponse = await remoteDatasource.getUserExist(userId);

      if (httpResponse.response.statusCode == HttpStatus.ok) {
        //print("getUserExist " + httpResponse.data.msg!);
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
  Future<Either<DioException, StandartResponse>> sendMessage(
      String email, String message) async {
    try {
      String userId = "";
      String phone = "";
      SharedPreferences prefs = await SharedPreferences.getInstance();
      final String? userIdPrefs = prefs.getString('userId');
      final String? phonePrefs = prefs.getString('phone');
      if (userIdPrefs != null) {
        userId = userIdPrefs;
        phone = phonePrefs!;
      }
      final httpResponse =
          await remoteDatasource.sendMessage(phone, userId, email, message);

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
}
