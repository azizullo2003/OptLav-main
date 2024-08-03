import 'package:dio/dio.dart';
import 'package:either_dart/either.dart';
import 'package:optlove/presentation/main/domain/enteties/products_response.dart';

abstract class ProductsRepository {
  Future<Either<DioError, ProductsResponse>> getProductsByCategory(
      String catalogId);
}
