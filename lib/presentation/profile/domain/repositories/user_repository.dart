import 'package:dio/dio.dart';
import 'package:either_dart/either.dart';
import 'package:optlove/core/standart_post_response.dart';
import 'package:optlove/presentation/profile/domain/models/inn_response.dart';
import 'package:optlove/presentation/profile/domain/models/user_change_response.dart';
import 'package:optlove/presentation/registration/domain/entities/user_info_response.dart';

abstract class UserRepository {
  Future<Either<DioError, UserInfoResponse>> getUserInfo();

  Future<Either<DioError, StandartResponse>> getUserExist();

  Future<Either<DioError, UserChangeResponse>> changeUserInfo(
      List<String> fields, List<String> values, List<String> regions);

  Future<Either<DioError, InnResponse>> innSearch(String inn);

  Future<Either<DioError, UserChangeResponse>> deleteUser();

  Future<Either<DioError, StandartResponse>> addToFavorite(String firmId);

  Future<Either<DioError, StandartResponse>> addProductToFavorite(
      String firmId, String productId);

  Future<Either<DioError, StandartResponse>> removeProductFromFavorite(
      String firmId, String productId);

  Future<Either<DioError, StandartResponse>> removeFromFavorite(String firmId);

  Future<Either<DioError, StandartResponse>> sendMessage(String email, String message);
}
