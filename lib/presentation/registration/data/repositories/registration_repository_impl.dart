import 'dart:io';

import 'package:dio/dio.dart';
import 'package:either_dart/either.dart';
import 'package:injectable/injectable.dart';
import 'package:optlove/core/standart_post_response.dart';
import 'package:optlove/presentation/registration/data/datasources/registration_remote_datasource.dart';
import 'package:optlove/presentation/registration/domain/entities/cities_response.dart';
import 'package:optlove/presentation/registration/domain/repositories/registration_repository.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../core/failure.dart';
import '../../../../core/utils/handle_standard_dio_error.dart';
import '../../domain/entities/auth_response.dart';

@Singleton(as: RegistrationRepository)
class RegistrationRepositoryImpl implements RegistrationRepository {
  final RegistrationRemoteDatasource remoteDatasource;

  RegistrationRepositoryImpl(
    this.remoteDatasource,
  );

  Future<Either<Failure<void>, T>> handleDioError<T>(
    Future<T> Function() function,
  ) async {
    try {
      return Right(await function());
    } on DioError catch (error) {
      return Left(
        await handleStandardDioError<void>(error)
            .fold((l) => l, (r) => Failure.unknownFailure(r.message)),
      );
    }
  }

  @override
  Future<Either<DioError, CitiesResponse>> citySearch(String city) async {
    try {
      await remoteDatasource.about();
      final httpResponse = await remoteDatasource.citySearch(city);

      if (httpResponse.response.statusCode == HttpStatus.ok) {
        return Right(httpResponse.data);
      }
      return Left(
        DioError(
          error: httpResponse.response.statusMessage,
          response: httpResponse.response,
          type: DioErrorType.response,
          requestOptions: RequestOptions(path: "path"),
        ),
      );
    } on DioError catch (e) {
      return Left(e);
    }
  }

  @override
  Future<Either<DioError, StandartResponse>> register(
      String phone, String email, String cityId, String city, int os) async {
    try {
      PackageInfo packageInfo = await PackageInfo.fromPlatform();
      String version = packageInfo.version;
      final httpResponse = await remoteDatasource.register(
          phone, email, cityId, city, os, version);

      if (httpResponse.response.statusCode == HttpStatus.ok) {
        return Right(httpResponse.data);
      }

      return Left(
        DioError(
          error: httpResponse.response.statusMessage,
          response: httpResponse.response,
          type: DioErrorType.response,
          requestOptions: RequestOptions(path: "path"),
        ),
      );
    } on DioError catch (e) {
      return Left(e);
    }
  }

  @override
  Future<Either<DioError, AuthResponse>> auth(
      String phone, String password, int os) async {
    try {
      final httpResponse =
          await remoteDatasource.auth(phone, password, os, "54777");

      if (httpResponse.response.statusCode == HttpStatus.ok) {
        return Right(httpResponse.data);
      }
      print("Auth Err");
      return Left(
        DioError(
          error: httpResponse.response.statusMessage,
          response: httpResponse.response,
          type: DioErrorType.response,
          requestOptions: RequestOptions(path: "path"),
        ),
      );
    } catch (e) {
      print("Auth Exe ");
      var f = DioError(
        error: "Пароль или логин неправильные",
        type: DioErrorType.response,
        requestOptions: RequestOptions(path: "path"),
      );
      return Left(f);
    }
  }

  @override
  Future<Either<DioError, StandartResponse>> restorePass(String phone) async {
    try {
      final httpResponse = await remoteDatasource.restorePass(phone);

      if (httpResponse.response.statusCode == HttpStatus.ok) {
        return Right(httpResponse.data);
      }

      return Left(
        DioError(
          error: httpResponse.response.statusMessage,
          response: httpResponse.response,
          type: DioErrorType.response,
          requestOptions: RequestOptions(path: "path"),
        ),
      );
    } on DioError catch (e) {
      return Left(e);
    }
  }

  @override
  Future<Either<DioError, String>> sendActivity(String screenName) async {
    try {
      var userId = "";
      var os = 0;
      PackageInfo packageInfo = await PackageInfo.fromPlatform();
      SharedPreferences prefs = await SharedPreferences.getInstance();
      final String? userIdFromPrefs = prefs.getString('userId');
      String version = packageInfo.version;
      if (Platform.isAndroid) {
        os = 2;
      } else if (Platform.isIOS) {
        os = 1;
      }

      if (userIdFromPrefs != null) {
        userId = userIdFromPrefs;
      }

      final httpResponse =
          await remoteDatasource.sendActivity(userId, os, screenName, version);

      if (httpResponse.response.statusCode == HttpStatus.ok) {
        return Right(httpResponse.data);
      }

      return Left(
        DioError(
          error: httpResponse.response.statusMessage,
          response: httpResponse.response,
          type: DioErrorType.response,
          requestOptions: RequestOptions(path: "path"),
        ),
      );
    } on DioError catch (e) {
      return Left(e);
    }
  }

  // @override
  // Future<Either<Failure<void>, CitiesResponse>> citySearch(String city) {
  //   handleDioError(() => remoteDatasource.citySearch(city));
  //   throw Error();
  // }
}
