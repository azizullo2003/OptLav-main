import 'package:dio/dio.dart';
import 'package:either_dart/either.dart';
import 'package:optlove/presentation/about/domain/response/about_response.dart';
import 'package:optlove/presentation/favorite/domain/enteties/favorite_products_response.dart';
import 'package:optlove/presentation/main/domain/enteties/actions_response.dart';
import 'package:optlove/presentation/main/domain/enteties/products_response.dart';
import 'package:optlove/presentation/main/domain/enteties/subcategories_response.dart';
import 'package:optlove/presentation/splash/enteties/static_response.dart';

import '../../../favorite/domain/enteties/favorite_response.dart';
import '../enteties/categories_response.dart';
import '../enteties/companies_response.dart';
import '../enteties/top_response.dart';

abstract class SearchRepository {
  Future<Either<DioError, CategoriesResponse>> getAllCategories();
  Future<Either<DioError, SubcategoriesResponse>> getAllSubcategories(
      String categoryid);

  Future<Either<DioError, List<CompaniesResponse>>> getAllCompanies();
  Future<Either<DioError, List<CompaniesResponse>>> searchCompanyById(
      String firmId);
  Future<Either<DioError, List<CompaniesResponse>>> companySearch(
      String searchText);
  Future<Either<DioError, CategoriesResponse>> getCompanyCatalog(
      String companyId);
  Future<Either<DioError, ProductsResponse>> getCompanyProductsByCategory(
      String categoryId, String companyId);
  Future<Either<DioError, ProductsResponse>> getProductsByCategory(
      String categoryId);
  Future<Either<DioError, ProductsResponse>> searchProducts(String request);
  Future<Either<DioError, ProductsResponse>> searchProductsByCompany(
      String request, String companyId);
  Future<Either<DioError, ProductsResponse>> searchProductsByCategory(
      String request, String categoryId);
  Future<Either<DioError, ProductsResponse>> searchProductsByCompanyAndCategory(
      String request, String companyId, String categoryId);

  Future<Either<DioError, AboutResponse>> getAbout();

  Future<Either<DioError, StaticResponse>> getStatic();

  Future<Either<DioError, ActionsResponse>> getActions();

  Future<Either<DioError, TopResponse>> getTop();

  Future<Either<DioError, FavoriteResponse>> getFavoriteCompanies();

  Future<Either<DioError, FavoriteProductsResponse>> getFavoriteProducts();
}
