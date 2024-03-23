import 'dart:io';

import 'package:dio/dio.dart';
import 'package:either_dart/either.dart';
import 'package:injectable/injectable.dart';
import 'package:optlove/presentation/about/domain/response/about_response.dart';
import 'package:optlove/presentation/favorite/domain/enteties/favorite_products_response.dart';
import 'package:optlove/presentation/main/%20data/datasources/search_remote_datasource.dart';
import 'package:optlove/presentation/main/domain/enteties/actions_response.dart';
import 'package:optlove/presentation/main/domain/enteties/categories_response.dart';
import 'package:optlove/presentation/main/domain/enteties/companies_response.dart';
import 'package:optlove/presentation/main/domain/enteties/products_response.dart';
import 'package:optlove/presentation/main/domain/enteties/subcategories_response.dart';
import 'package:optlove/presentation/main/domain/enteties/top_response.dart';
import 'package:optlove/presentation/main/domain/repositories/search_repository.dart';
import 'package:optlove/presentation/splash/enteties/static_response.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../core/failure.dart';
import '../../../../core/utils/handle_standard_dio_error.dart';
import '../../../favorite/domain/enteties/favorite_response.dart';

@Singleton(as: SearchRepository)
class SearchRepositoryImpl implements SearchRepository {
  final SearchRemoteDatasource remoteDatasource;

  SearchRepositoryImpl(
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
  Future<Either<DioError, CategoriesResponse>> getAllCategories() async {
    try {
      final httpResponse = await remoteDatasource.getAllCategories();

      if (httpResponse.response.statusCode == HttpStatus.ok) {
        print("Right ${httpResponse.data.categories}");
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
  Future<Either<DioError, SubcategoriesResponse>> getAllSubcategories(
      String categoryId) async {
    print("subcategory loading");
    try {
      final httpResponse =
          await remoteDatasource.getAllSubcategories(categoryId);

      if (httpResponse.response.statusCode == HttpStatus.ok) {
        print("Right ${httpResponse.data.subcategories}");
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
  Future<Either<DioError, List<CompaniesResponse>>> getAllCompanies() async {
    try {
      String userId = "";
      SharedPreferences prefs = await SharedPreferences.getInstance();
      final String? userIdPrefs = prefs.getString('userId');
      if (userIdPrefs != null) {
        userId = userIdPrefs;
      }
      final httpResponse = await remoteDatasource.getAllCompanies(userId, "1");

      if (httpResponse.response.statusCode == HttpStatus.ok) {
        print("GET ALL ${httpResponse.data}");
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
  Future<Either<DioError, List<CompaniesResponse>>> companySearch(
      String searchText) async {
    try {
      final httpResponse = await remoteDatasource.companySearch(searchText);

      if (httpResponse.response.statusCode == HttpStatus.ok) {
        print("Right ${httpResponse.data.length}");
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
  Future<Either<DioError, CategoriesResponse>> getCompanyCatalog(
      String companyId) async {
    try {
      final httpResponse = await remoteDatasource.getCompanyCatalog(companyId);

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
  Future<Either<DioError, ProductsResponse>> getCompanyProductsByCategory(
      String categoryId, String companyId) async {
    try {
      final httpResponse = await remoteDatasource.getCompanyProductsByCategory(
          categoryId, companyId);

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
  Future<Either<DioError, ProductsResponse>> searchProducts(
      String request) async {
    try {
      String userId = "";
      SharedPreferences prefs = await SharedPreferences.getInstance();
      final String? userIdPrefs = prefs.getString('userId');
      if (userIdPrefs != null) {
        userId = userIdPrefs;
      }
      final httpResponse =
          await remoteDatasource.searchProducts(request, userId);

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
  Future<Either<DioError, ProductsResponse>> searchProductsByCompany(
      String request, String companyId) async {
    try {
      final httpResponse =
          await remoteDatasource.searchProductsByCompany(request, companyId);

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
  Future<Either<DioError, ProductsResponse>> searchProductsByCompanyAndCategory(
      String request, String companyId, String categoryId) async {
    try {
      final httpResponse = await remoteDatasource
          .searchProductsByCompanyAndCategory(request, companyId, categoryId);

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
  Future<Either<DioError, ProductsResponse>> searchProductsByCategory(
      String request, String categoryId) async {
    try {
      final httpResponse =
          await remoteDatasource.searchProductsByCategory(request, categoryId);

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
  Future<Either<DioError, ProductsResponse>> getProductsByCategory(
      String categoryId) async {
    try {
      print("CAT ID$categoryId");
      String userId = "";
      SharedPreferences prefs = await SharedPreferences.getInstance();
      final String? userIdPrefs = prefs.getString('userId');
      if (userIdPrefs != null) {
        userId = userIdPrefs;
      }
      final httpResponse =
          await remoteDatasource.getProductsByCategory(categoryId, userId);

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
  Future<Either<DioError, AboutResponse>> getAbout() async {
    try {
      final httpResponse = await remoteDatasource.about();

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
  Future<Either<DioError, StaticResponse>> getStatic() async {
    try {
      final httpResponse = await remoteDatasource.getStatic();

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
  Future<Either<DioError, ActionsResponse>> getActions() async {
    try {
      String userId = "";
      SharedPreferences prefs = await SharedPreferences.getInstance();
      final String? userIdPrefs = prefs.getString('userId');
      if (userIdPrefs != null) {
        userId = userIdPrefs;
      }
      final httpResponse = await remoteDatasource.getActions(userId);

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
  Future<Either<DioError, FavoriteResponse>> getFavoriteCompanies() async {
    try {
      String userId = "";
      SharedPreferences prefs = await SharedPreferences.getInstance();
      final String? userIdPrefs = prefs.getString('userId');
      if (userIdPrefs != null) {
        userId = userIdPrefs;
      }

      int get = 1;
      print("getFavoriteCompanies ");
      final httpResponse =
          await remoteDatasource.getFavoriteCompanies(userId, get);

      if (httpResponse.response.statusCode == HttpStatus.ok) {
        print("getFavoriteCompanies OK");
        return Right(httpResponse.data);
      }
      print("getFavoriteCompanies Left ");
      return Left(
        DioError(
          error: httpResponse.response.statusMessage,
          response: httpResponse.response,
          type: DioErrorType.response,
          requestOptions: RequestOptions(path: "path"),
        ),
      );
    } on DioError catch (e) {
      print("getFavoriteCompanies Err  ${e.message}");
      return Left(e);
    }
  }

  @override
  Future<Either<DioError, FavoriteProductsResponse>>
      getFavoriteProducts() async {
    try {
      String userId = "";
      SharedPreferences prefs = await SharedPreferences.getInstance();
      final String? userIdPrefs = prefs.getString('userId');
      if (userIdPrefs != null) {
        userId = userIdPrefs;
      }

      int get = 1;
      final httpResponse =
          await remoteDatasource.getFavoriteProducts(userId, get);

      if (httpResponse.response.statusCode == HttpStatus.ok) {
        print("getFavoriteCompanies OK ${httpResponse.data.massiv_id}");
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
  Future<Either<DioError, List<CompaniesResponse>>> searchCompanyById(
      String firmId) async {
    try {
      print("SearchById $firmId");
      final httpResponse =
          await remoteDatasource.searchCompanyById("1", firmId);

      if (httpResponse.response.statusCode == HttpStatus.ok) {
        print("Right ${httpResponse.data.length}");
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
  Future<Either<DioError, TopResponse>> getTop() async {
    try {
      String userId = "";
      SharedPreferences prefs = await SharedPreferences.getInstance();
      final String? userIdPrefs = prefs.getString('userId');
      if (userIdPrefs != null) {
        userId = userIdPrefs;
      }
      final httpResponse = await remoteDatasource.getTop(userId);

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
}
