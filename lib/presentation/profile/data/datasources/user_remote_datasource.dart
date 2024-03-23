import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:optlove/core/standart_post_response.dart';
import 'package:optlove/presentation/profile/domain/models/inn_response.dart';
import 'package:optlove/presentation/profile/domain/models/user_change_response.dart';
import 'package:optlove/presentation/registration/domain/entities/user_info_response.dart';
import 'package:retrofit/dio.dart';
import 'package:retrofit/http.dart';

import '../../../../core/constants.dart';
part 'user_remote_datasource.g.dart';

@singleton
class UserRemoteDatasource {
  final UserApi api;

  UserRemoteDatasource(this.api);

  Future<HttpResponse<UserInfoResponse>> getUserInfo(String? phone, String userId) =>
      api.getUserInfo(phone, userId);

  Future<HttpResponse<StandartResponse>> getUserExist(String userId) =>
      api.getUserExist(userId);

  Future<HttpResponse<UserChangeResponse>> changeUserInfo(String? userId,
          List<String> fields, List<String> values, List<String> regions) =>
      api.changeUserInfo(userId, fields, values, regions);

  Future<HttpResponse<InnResponse>> innSearch(String inn) => api.innSearch(inn);

  Future<HttpResponse<UserChangeResponse>> deleteUser(
          String id, String secretPass) =>
      api.deleteUser(id, secretPass);

  Future<HttpResponse<StandartResponse>> addProductToFavorite(
          String userId, String productId, String firmId, int put) =>
      api.addProductToFavorite(userId, productId, firmId, put);

  Future<HttpResponse<StandartResponse>> removeProductFromFavorite(
      String userId, String productId, String firmId, int del) =>
      api.removeProductFromFavorite(userId, productId, firmId, del);

  Future<HttpResponse<StandartResponse>> addToFavorite(
          String userId, String firmId, int put) =>
      api.addToFavorite(userId, firmId, put);

  Future<HttpResponse<StandartResponse>> removeFromFavorite(
          String userId, String firmId, int del) =>
      api.removeFromFavorite(userId, firmId, del);

  Future<HttpResponse<StandartResponse>> sendMessage(
      String phone, String userId, String email, String message) =>
      api.sendMessage(phone, userId, email, message);
}

@RestApi(baseUrl: apiBaseUrl)
@singleton
abstract class UserApi {
  @factoryMethod
  factory UserApi(Dio dio) => _UserApi(dio);

  @POST('api4.php?action=user_info')
  @FormUrlEncoded()
  Future<HttpResponse<UserInfoResponse>> getUserInfo(
      @Query("phone") String? phone, @Query("user_id") String userId);

  @GET('api4.php?action=user_error')
  Future<HttpResponse<StandartResponse>> getUserExist(
      @Query("id") String userId);

  @POST('api4.php?action=change_user')
  @FormUrlEncoded()
  Future<HttpResponse<UserChangeResponse>> changeUserInfo(
    @Field("user_id") String? userId,
    @Field("fields[]") List<String> fields,
    @Field("values[]") List<String> values,
    @Field("regions[]") List<String> regions,
  );

  @POST('api4.php?action=user_delete')
  @FormUrlEncoded()
  Future<HttpResponse<UserChangeResponse>> deleteUser(
    @Query("id") String userId,
    @Query("secret_pass") String secretPass,
  );

  @POST('api4.php?action=favorites')
  @FormUrlEncoded()
  Future<HttpResponse<StandartResponse>> addToFavorite(
    @Field("firm_id") String userId,
    @Field("favorit_id") String firmId,
    @Field("put") int values,
  );

  @POST('api4.php?action=favor_tovars')
  @FormUrlEncoded()
  Future<HttpResponse<StandartResponse>> addProductToFavorite(
    @Field("user_id") String userId,
    @Field("favorit_id") String productId,
    @Field("prod_id") String firmId,
    @Field("put") int values,
  );

  @POST('api4.php?action=favor_tovars')
  @FormUrlEncoded()
  Future<HttpResponse<StandartResponse>> removeProductFromFavorite(
    @Field("user_id") String userId,
    @Field("favorit_id") String productId,
    @Field("prod_id") String firmId,
    @Field("del") int values,
  );

  @POST('api4.php?action=favorites')
  @FormUrlEncoded()
  Future<HttpResponse<StandartResponse>> removeFromFavorite(
    @Field("firm_id") String userId,
    @Field("favorit_id") String firmId,
    @Field("del") int del,
  );

  @POST('api4.php?action=message')
  @FormUrlEncoded()
  Future<HttpResponse<StandartResponse>> sendMessage(
      @Field("phone") String phone,
      @Field("user_id") String userId,
      @Field("email") String email,
      @Field("message") String message,
      );

  @GET('api4.php?action=inn')
  Future<HttpResponse<InnResponse>> innSearch(
    @Query("inn_id") String inn,
  );
}
