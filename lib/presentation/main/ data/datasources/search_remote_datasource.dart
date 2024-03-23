import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:optlove/presentation/about/domain/response/about_response.dart';
import 'package:optlove/presentation/favorite/domain/enteties/favorite_products_response.dart';
import 'package:optlove/presentation/main/domain/enteties/actions_response.dart';
import 'package:optlove/presentation/main/domain/enteties/categories_response.dart';
import 'package:optlove/presentation/main/domain/enteties/products_response.dart';
import 'package:optlove/presentation/main/domain/enteties/subcategories_response.dart';
import 'package:retrofit/dio.dart';
import 'package:retrofit/http.dart';

import '../../../../core/constants.dart';
import '../../../favorite/domain/enteties/favorite_response.dart';
import '../../../splash/enteties/static_response.dart';
import '../../domain/enteties/companies_response.dart';
import '../../domain/enteties/top_response.dart';
part 'search_remote_datasource.g.dart';

@singleton
class SearchRemoteDatasource {
  final SearchApi api;

  SearchRemoteDatasource(this.api);

  Future<HttpResponse<CategoriesResponse>> getAllCategories() =>
      api.getAllCategories();

  Future<HttpResponse<SubcategoriesResponse>> getAllSubcategories(
          String categoryId) =>
      api.getAllSubcategories(categoryId);

  Future<HttpResponse<List<CompaniesResponse>>> getAllCompanies(
          String userId, String phone) =>
      api.getAllCompanies(phone, userId);

  Future<HttpResponse<List<CompaniesResponse>>> companySearch(
          String searchText) =>
      api.companySearch(searchText);

  Future<HttpResponse<List<CompaniesResponse>>> searchCompanyById(
          String phone, String firmId) =>
      api.searchCompanyById(phone, firmId);

  Future<HttpResponse<CategoriesResponse>> getCompanyCatalog(
          String companyId) =>
      api.getCompanyCatalog(companyId);

  Future<HttpResponse<ProductsResponse>> getProductsByCategory(
          String categoryId, String userId) =>
      api.getProductsByCategory(categoryId, userId);

  Future<HttpResponse<ProductsResponse>> getCompanyProductsByCategory(
          String categoryId, String companyId) =>
      api.getCompanyProductsByCategory(categoryId, companyId);

  Future<HttpResponse<ProductsResponse>> searchProducts(
          String request, String firmId) =>
      api.searchProducts(request, firmId);

  Future<HttpResponse<ProductsResponse>> searchProductsByCompany(
          String request, String companyId) =>
      api.searchProductsByCompany(request, companyId);

  Future<HttpResponse<ProductsResponse>> searchProductsByCategory(
          String request, String categoryId) =>
      api.searchProductsByCategory(request, categoryId);

  Future<HttpResponse<ProductsResponse>> searchProductsByCompanyAndCategory(
          String request, String companyId, String categoryId) =>
      api.searchProductsByCompanyAndCategory(request, companyId, categoryId);

  Future<HttpResponse<AboutResponse>> about() => api.about();

  Future<HttpResponse<StaticResponse>> getStatic() => api.getStatic();

  Future<HttpResponse<ActionsResponse>> getActions(String userId) =>
      api.getActions(userId);

  Future<HttpResponse<TopResponse>> getTop(String userId) => api.getTop(userId);

  Future<HttpResponse<FavoriteResponse>> getFavoriteCompanies(
          String userId, int get) =>
      api.getFavoriteCompanies(userId, get);

  Future<HttpResponse<FavoriteProductsResponse>> getFavoriteProducts(
          String userId, int get) =>
      api.getFavoriteProducts(userId, get);
}

@RestApi(baseUrl: apiBaseUrl)
@singleton
abstract class SearchApi {
  @factoryMethod
  factory SearchApi(Dio dio) => _SearchApi(dio);

  @POST('api4.php?action=allcategories')
  @FormUrlEncoded()
  Future<HttpResponse<CategoriesResponse>> getAllCategories();

  @POST('api4.php?action=subcategories')
  @FormUrlEncoded()
  Future<HttpResponse<SubcategoriesResponse>> getAllSubcategories(
    @Query("category_id") String categoryId,
  );

  @POST('api4.php?action=user_search')
  @FormUrlEncoded()
  Future<HttpResponse<List<CompaniesResponse>>> getAllCompanies(
      @Query("phone") String phone, @Query("user_id") String userId);

  @POST('api4.php?action=allproducts')
  @FormUrlEncoded()
  Future<HttpResponse<ProductsResponse>> getProductsByCategory(
      @Query("id_cat") String catalogId, @Query("user_id") String userId);

  @POST('api4.php?action=user_search')
  @FormUrlEncoded()
  Future<HttpResponse<List<CompaniesResponse>>> searchCompanyById(
      @Query("phone") String phone, @Query("firm_id") String firmId);

  @POST('api4.php?action=user_search')
  @FormUrlEncoded()
  Future<HttpResponse<List<CompaniesResponse>>> companySearch(
      @Field("phone") String searchText);

  @GET('api4.php?action=categories')
  Future<HttpResponse<CategoriesResponse>> getCompanyCatalog(
      @Query("user_id") String companyId);

  @GET('api4.php?action=prod_cat')
  Future<HttpResponse<ProductsResponse>> getCompanyProductsByCategory(
      @Query("cat_id") String categoryId, @Query("user_id") String companyId);

  @GET('api4.php?action=products_search')
  Future<HttpResponse<ProductsResponse>> searchProducts(
      @Query("request") String request, @Query("user_id") String firmId);

  @GET('api4.php?action=products_search')
  Future<HttpResponse<ProductsResponse>> searchProductsByCompany(
      @Query("request") String request, @Query("firm_id") String companyId);

  @GET('api4.php?action=products_search')
  Future<HttpResponse<ProductsResponse>> searchProductsByCategory(
      @Query("request") String request, @Query("cat_id") String categoryId);

  @GET('api4.php?action=products_search')
  Future<HttpResponse<ProductsResponse>> searchProductsByCompanyAndCategory(
      @Query("request") String request,
      @Query("firm_id") String companyId,
      @Query("cat_id") String categoryId);

  @GET('api4.php?action=about')
  Future<HttpResponse<AboutResponse>> about();

  @GET('api4.php?action=static')
  Future<HttpResponse<StaticResponse>> getStatic();

  @GET('https://panel.optlav.ru/api4.php?action=action')
  Future<HttpResponse<ActionsResponse>> getActions(
      @Query("user_id") String userId);

  @GET('api4.php?action=top')
  Future<HttpResponse<TopResponse>> getTop(@Query("user_id") String userId);

  @GET('https://panel.optlav.ru/api4.php?action=favorites')
  Future<HttpResponse<FavoriteResponse>> getFavoriteCompanies(
      @Query("firm_id") String userId, @Query("get") int get);

  @GET('https://panel.optlav.ru/api4.php?action=favor_tovars')
  Future<HttpResponse<FavoriteProductsResponse>> getFavoriteProducts(
      @Query("user_id") String userId, @Query("get") int get);
}
