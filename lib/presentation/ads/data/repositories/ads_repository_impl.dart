import 'dart:io';

import 'package:dio/dio.dart';
import 'package:either_dart/either.dart';
import 'package:injectable/injectable.dart';
import 'package:optlove/presentation/ads/data/datasources/ads_remote_datasource.dart';
import 'package:optlove/presentation/ads/domain/entities/ads_category_response.dart';
import 'package:optlove/presentation/ads/domain/entities/ads_city_response.dart';
import 'package:optlove/presentation/ads/domain/entities/ads_function_response.dart';
import 'package:optlove/presentation/ads/domain/entities/ads_response.dart';
import 'package:optlove/presentation/ads/domain/repositories/ads_repository.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../core/failure.dart';
import '../../../../core/utils/handle_standard_dio_error.dart';

@Singleton(as: AdsRepository)
class AdsCategoryRepositoryImpl implements AdsRepository {
  final AdsRemoteDatasource remoteDatasource;

  AdsCategoryRepositoryImpl(
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
      List<MultipartFile> images) async {
    try {
      final httpResponse = await remoteDatasource.createAd(
          userId,
          type1,
          type2,
          categoryId,
          subcategoryId,
          name,
          description,
          cityId,
          price,
          phone,
          email,
          images);
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
      List<MultipartFile> images) async {
    try {
      final httpResponse = await remoteDatasource.updateAd(
        adId,
        userId,
        type1,
        type2,
        categoryId,
        subcategoryId,
        name,
        description,
        cityId,
        price,
        phone,
        email,
        images,
      );
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
  Future<Either<DioException, AdsFunctionResponse>> deleteAd(
      String adId) async {
    try {
      final httpResponse = await remoteDatasource.deleteAd(adId);

      if (httpResponse.response.statusCode == HttpStatus.ok) {
        print("Right ${httpResponse.data}");
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
  Future<Either<DioException, AdsCategoryResponse>> getAdsCategory() async {
    try {
      final httpResponse = await remoteDatasource.getAdsCategory();

      if (httpResponse.response.statusCode == HttpStatus.ok) {
        print("Right ${httpResponse.data}");
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
  Future<Either<DioException, AdsCategoryResponse>> getAdsSubcategoryByCategory(
      String categoryId) async {
    try {
      final httpResponse =
          await remoteDatasource.getAdsSubcategorybyCategory(categoryId);

      if (httpResponse.response.statusCode == HttpStatus.ok) {
        print("Right ${httpResponse.data}");
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
  Future<Either<DioException, void>> getAdsByCategory(String categoryId) async {
    try {
      final httpResponse = await remoteDatasource.getAdsByCategory();
      if (httpResponse.response.statusCode == HttpStatus.ok) {
        // print("Right ${httpResponse.data}");
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
  Future<Either<DioException, void>> getAdsBySubcategory(
      String subcategoryId) async {
    try {
      final httpResponse =
          await remoteDatasource.getAdsBySubcategory(subcategoryId);
      if (httpResponse.response.statusCode == HttpStatus.ok) {
        // print("Right ${httpResponse.data}");
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
  Future<Either<DioException, void>> getAdById(String adId) async {
    try {
      final httpResponse = await remoteDatasource.getAdById(adId);
      if (httpResponse.response.statusCode == HttpStatus.ok) {
        // print("Right ${httpResponse.data}");
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

  // New method to fetch ads with optional filters
  @override
  Future<Either<DioException, AdsResponse>> getAds({
    String? type,
    String? sort,
    String? category,
    bool? my,
    String? userId,
    String? poisk,
  }) async {
    try {
      final response = await remoteDatasource.getAds(
        type: type,
        sort: sort,
        category: category,
        my: my,
        userId: userId,
        poisk: poisk,
      );
      return Right(response.data);
    } catch (e) {
      print(e);
      return Left(e as DioException);
    }
  }

  // New method to fetch ads with optional filters
  @override
  Future<Either<DioException, AdsResponse>> getMyAds({
    String? sort,
    String? poisk,
  }) async {
    try {
      String userId = "";
      SharedPreferences prefs = await SharedPreferences.getInstance();
      final String? userIdPrefs = prefs.getString('userId');
      if (userIdPrefs != null) {
        userId = userIdPrefs;
      }
      final response = await remoteDatasource.getAds(
        sort: sort,
        my: true,
        userId: userId,
        poisk: poisk,
      );
      return Right(response.data);
    } catch (e) {
      print(e);
      return Left(e as DioException);
    }
  }

  @override
  Future<Either<DioException, AdsCityResponse>> getCityById({
    required String id,
  }) async {
    try {
      final response = await remoteDatasource.getCityById(
        id: id,
      );
      return Right(response.data);
    } catch (e) {
      print(e);
      return Left(e as DioException);
    }
  }
}
