import 'package:dio/dio.dart';
import 'package:either_dart/either.dart';
import 'package:optlove/core/standart_post_response.dart';
import 'package:optlove/presentation/profile/domain/models/inn_response.dart';
import 'package:optlove/presentation/profile/domain/models/user_change_response.dart';
import 'package:optlove/presentation/registration/domain/entities/user_info_response.dart';

abstract class UserRepository {
  Future<Either<DioException, UserInfoResponse>> getUserInfo();

  Future<Either<DioException, StandartResponse>> getUserExist();

  Future<Either<DioException, UserChangeResponse>> changeUserInfo(
      List<String> fields, List<String> values, List<String> regions);

  Future<Either<DioException, InnResponse>> innSearch(String inn);

  Future<Either<DioException, UserChangeResponse>> deleteUser();

  Future<Either<DioException, StandartResponse>> addToFavorite(String firmId);

  Future<Either<DioException, StandartResponse>> addProductToFavorite(
      String firmId, String productId);

  Future<Either<DioException, StandartResponse>> removeProductFromFavorite(
      String firmId, String productId);

  Future<Either<DioException, StandartResponse>> removeFromFavorite(
      String firmId);

  Future<Either<DioException, StandartResponse>> sendMessage(
      String email, String message);
}
