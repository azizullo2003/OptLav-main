import 'package:dio/dio.dart';
import 'package:either_dart/either.dart';
import 'package:optlove/presentation/ads/domain/entities/ads_category_response.dart';
import 'package:optlove/presentation/ads/domain/entities/ads_function_response.dart';
import 'package:optlove/presentation/ads/domain/entities/ads_response.dart';

// Define the repository interface
abstract class AdsRepository {
  Future<Either<DioException, AdsFunctionResponse>> createAd(
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
      List<MultipartFile> images);

  Future<Either<DioException, AdsFunctionResponse>> updateAd(
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
      List<MultipartFile> images);

  Future<Either<DioException, AdsFunctionResponse>> deleteAd(String adId);

  Future<Either<DioException, AdsCategoryResponse>> getAdsCategory();

  Future<Either<DioException, AdsCategoryResponse>> getAdsSubcategoryByCategory(
      String categoryId);

  Future<Either<DioException, void>> getAdsByCategory(String categoryId);

  Future<Either<DioException, void>> getAdsBySubcategory(String subcategoryId);

  Future<Either<DioException, void>> getAdById(String adId);

  // New method to fetch ads with optional filters
  Future<Either<DioException, AdsResponse>> getAds({
    String? type,
    String? sort,
    String? category,
    bool? my,
    String? userId,
    String? poisk,
  });
}
