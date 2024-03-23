import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:optlove/presentation/main/domain/enteties/products_response.dart';
import 'package:retrofit/dio.dart';
import 'package:retrofit/http.dart';

import '../../../../core/constants.dart';

part 'products_remote_datasource.g.dart';

@singleton
class ProductsRemoteDatasource {
  final ProductsApi api;

  ProductsRemoteDatasource(this.api);

  Future<HttpResponse<ProductsResponse>> getProductsById(String catalogId)
  => api.getProductsById(catalogId);

  Future<HttpResponse<ProductsResponse>> getProductsByUser(
      String catalogId,
      String companyId)
  => api.getProductsById(catalogId);

}

@RestApi(baseUrl: apiBaseUrl)
@singleton
abstract class ProductsApi {
  @factoryMethod
  factory ProductsApi(Dio dio) => _ProductsApi(dio);

  @POST('api4.php?action=allproducts')
  @FormUrlEncoded()
  Future<HttpResponse<ProductsResponse>> getProductsById(
      @Field("id_cat") String catalogId
      );

  @POST('api4.php?action=prod_cat')
  @FormUrlEncoded()
  Future<HttpResponse<ProductsResponse>> getProductsByUser(
  @Query("cat_id") String catalogId,
      @Query("user_id") String companyId
      );


}