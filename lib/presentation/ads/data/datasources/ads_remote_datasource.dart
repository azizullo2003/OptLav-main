import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:optlove/core/errorLogger.dart';
import 'package:optlove/presentation/ads/domain/entities/ads_category_response.dart';
import 'package:optlove/presentation/ads/domain/entities/ads_city_response.dart';
import 'package:optlove/presentation/ads/domain/entities/ads_function_response.dart';
import 'package:optlove/presentation/ads/domain/entities/ads_response.dart';
import 'package:retrofit/dio.dart';
import 'package:retrofit/http.dart';

import '../../../../core/constants.dart';
part 'ads_remote_datasource.g.dart';

@singleton
class AdsRemoteDatasource {
  final AdsRemoteApi api;

  AdsRemoteDatasource(this.api);

  // New methods for ads
  Future<HttpResponse<AdsFunctionResponse>> createAd(
          String userId,
          String type1,
          String type2,
          String categoryId,
          String subcategoryId,
          String name,
          String description,
          String cityId,
          String price,
          String phone,
          String email,
          List<MultipartFile> images,
          String name_firm) =>
      api.createAd(userId, type1, type2, categoryId, subcategoryId, name,
          description, cityId, price, phone, email, images, name_firm);

  Future<HttpResponse<AdsFunctionResponse>> updateAd(
          String adId,
          String userId,
          String type1,
          String type2,
          String categoryId,
          String subcategoryId,
          String name,
          String description,
          String cityId,
          String price,
          String phone,
          String email,
          List<MultipartFile> images,
          String name_firm) =>
      api.updateAd(adId, userId, type1, type2, categoryId, subcategoryId, name,
          description, cityId, price, phone, email, images, name_firm);

  Future<HttpResponse<AdsFunctionResponse>> deleteAd(String adId) =>
      api.deleteAd(adId);

  // New requests for the given URLs
  Future<HttpResponse<AdsCategoryResponse>> getAdsCategory() =>
      api.getAdsCategory();

  Future<HttpResponse<AdsCategoryResponse>> getAdsSubcategorybyCategory(
          String categoryId) =>
      api.getAdsSubcategorybyCategory(categoryId);

  Future<HttpResponse<void>> getAdsByCategory() => api.getAdsByCategory();

  Future<HttpResponse<void>> getAdsBySubcategory(String subcategoryId) =>
      api.getAdsBySubcategory(subcategoryId);

  Future<HttpResponse<void>> getAdById(String adId) => api.getAdById(adId);

  // New method for fetching ads with optional filters
  Future<HttpResponse<AdsResponse>> getAds({
    String? type,
    String? sort,
    String? category,
    String? subCategory,
    bool? my,
    String? userId,
    String? poisk,
  }) {
    return api.getAds(
      type: type,
      sort: sort,
      category: category,
      subCategory: subCategory,
      my: my,
      userId: userId,
      poisk: poisk,
    );
  }

  Future<HttpResponse<AdsCityResponse>> getCityById({
    required String id,
  }) {
    return api.getCityById(
      id: id,
    );
  }
}

@RestApi(baseUrl: apiBaseUrl)
@singleton
abstract class AdsRemoteApi {
  @factoryMethod
  factory AdsRemoteApi(Dio dio) => _AdsRemoteApi(dio);

  // New endpoints for ads
  @POST('api4.php?action=ads_create')
  @MultiPart()
  Future<HttpResponse<AdsFunctionResponse>> createAd(
      @Part(name: "user_id") String userId,
      @Part(name: "type1") String type1,
      @Part(name: "type2") String type2,
      @Part(name: "category_id") String categoryId,
      @Part(name: "subcategory_id") String subcategoryId,
      @Part(name: "name") String name,
      @Part(name: "description") String description,
      @Part(name: "city_id") String cityId,
      @Part(name: "price") String price,
      @Part(name: "phone") String phone,
      @Part(name: "email") String email,
      @Part(name: "images[]") List<MultipartFile> images,
      @Part(name: "name_firm") String name_firm);

  @POST('api4.php?action=ads_update')
  @MultiPart()
  Future<HttpResponse<AdsFunctionResponse>> updateAd(
      @Part(name: "ads_id") String adId,
      @Part(name: "user_id") String userId,
      @Part(name: "type1") String type1,
      @Part(name: "type2") String type2,
      @Part(name: "category_id") String categoryId,
      @Part(name: "subcategory_id") String subcategoryId,
      @Part(name: "name") String name,
      @Part(name: "description") String description,
      @Part(name: "city_id") String cityId,
      @Part(name: "price") String price,
      @Part(name: "phone") String phone,
      @Part(name: "email") String email,
      @Part(name: "images[]") List<MultipartFile> images,
      @Part(name: "name_firm") String name_firm);

  @POST('api4.php?action=ads_remove')
  @FormUrlEncoded()
  Future<HttpResponse<AdsFunctionResponse>> deleteAd(
      @Query("ads_id") String adId);

  // New requests for the given URLs
  @GET('api4.php?action=ads_category_get_collection')
  Future<HttpResponse<AdsCategoryResponse>> getAdsCategory();

  @GET('api4.php?action=ads_sub_category_get_collection')
  Future<HttpResponse<AdsCategoryResponse>> getAdsSubcategorybyCategory(
      @Query("id") String categoryId);

  @GET('api4.php?action=ads_get_collection')
  Future<HttpResponse<void>> getAdsByCategory();

  @GET('api4.php?action=ads_get_collection')
  Future<HttpResponse<void>> getAdsBySubcategory(
      @Query("sub_category") String subCategory);

  @GET('api4.php?action=ads_get')
  Future<HttpResponse<void>> getAdById(@Query("ads_id") String adId);

  // New endpoint for fetching ads with optional filters
  @GET('api4.php?action=ads_get_collection')
  Future<HttpResponse<AdsResponse>> getAds({
    @Query("type") String? type,
    @Query("sort") String? sort,
    @Query("category") String? category,
    @Query("sub_category") String? subCategory,
    @Query("my") bool? my,
    @Query("user_id") String? userId,
    @Query("poisk") String? poisk,
  });

  @GET('api4.php?action=сity_get')
  Future<HttpResponse<AdsCityResponse>> getCityById({
    @Query("id") String? id,
  });
}
