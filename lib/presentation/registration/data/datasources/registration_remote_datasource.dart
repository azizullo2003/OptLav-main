import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:optlove/core/standart_post_response.dart';
import 'package:optlove/presentation/registration/domain/entities/AboutResp.dart';
import 'package:optlove/presentation/registration/domain/entities/cities_response.dart';
import 'package:retrofit/dio.dart';
import 'package:retrofit/http.dart';

import '../../../../core/constants.dart';
import '../../domain/entities/auth_response.dart';

part 'registration_remote_datasource.g.dart';

@singleton
class RegistrationRemoteDatasource {
  final RegistrationApi api;

  RegistrationRemoteDatasource(this.api);

  Future<HttpResponse<StandartResponse>> register(
      String phone,
      String email,
      String cityId,
      String cty,
      int os,
      String version
      ) => api.register(phone, email, cityId, cty, os, version);

  Future<HttpResponse<StandartResponse>> restorePass(String phone)
  => api.restorePass(phone);

  Future<HttpResponse<AuthResponse>> auth(
      String login,
      String password,
      int os,
      String key,
      ) => api.auth(login, password, os, key);

  Future<HttpResponse<CitiesResponse>> citySearch(String city) => api.citySearch(city);

  Future<HttpResponse<ABoutResponse>> about() => api.about();

  Future<HttpResponse<String>> sendActivity(
      String userId,
      int os,
      String home,
      String version
      ) => api.sendActivity(userId, os, home, version);

}

@RestApi(baseUrl: apiBaseUrl)
@singleton
abstract class RegistrationApi {
  @factoryMethod
  factory RegistrationApi(Dio dio) => _RegistrationApi(dio);

  @POST('api4.php?action=find_city&city=Ейск')
  @FormUrlEncoded()
  Future<HttpResponse<CitiesResponse>> citySearch( @Field("city")String city);

  @POST('api4.php?action=register')
  @FormUrlEncoded()
  Future<HttpResponse<StandartResponse>> register(
      @Field("phone") String phone,
      @Field("email") String email,
      @Field("city_id") String cityId,
      @Field("city") String city,
      @Field("os") int os,
      @Field("version") String version);

  @POST('api4.php?action=remind')
  @FormUrlEncoded()
  Future<HttpResponse<StandartResponse>> restorePass(
      @Field("phone") String phone);

  @POST('api4.php?action=auth')
  @FormUrlEncoded()
  Future<HttpResponse<AuthResponse>> auth(
      @Field("login") String login,
      @Field("password") String password,
      @Field("os") int os,
      @Field("key") String key);

  @POST('api4.php?action=activity')
  @FormUrlEncoded()
  Future<HttpResponse<String>> sendActivity(
      @Field("user_id") String userId,
      @Field("os") int os,
      @Field("home") String home,
      @Field("version") String version);

   @GET('api4.php?action=about')
   Future<HttpResponse<ABoutResponse>> about();

}