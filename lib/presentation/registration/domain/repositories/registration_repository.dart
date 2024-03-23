import 'package:dio/dio.dart';
import 'package:either_dart/either.dart';
import 'package:optlove/core/standart_post_response.dart';
import 'package:optlove/presentation/registration/domain/entities/cities_response.dart';

import '../entities/auth_response.dart';

abstract class RegistrationRepository {

  Future<Either<DioError, CitiesResponse>> citySearch(String city);
  Future<Either<DioError, StandartResponse>> register(
   String phone,
  String email,
   String cityId,
   String city,
      int os);
  Future<Either<DioError, StandartResponse>> restorePass(String phone);
  Future<Either<DioError, AuthResponse>> auth(
      String phone,
      String password,
      int os);

  Future<Either<DioError, String>> sendActivity(
      String screenName);
}