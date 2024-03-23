import 'dart:io';

import 'package:dio/dio.dart';
import 'package:either_dart/either.dart';
import 'package:injectable/injectable.dart';
import 'package:optlove/presentation/main/%20data/datasources/products_remote_datasource.dart';
import 'package:optlove/presentation/main/domain/enteties/products_response.dart';
import 'package:optlove/presentation/main/domain/repositories/products_repository.dart';

import '../../../../core/failure.dart';
import '../../../../core/utils/handle_standard_dio_error.dart';

@Singleton(as: ProductsRepository)
class ProductsRepositoryImpl implements ProductsRepository {
  final ProductsRemoteDatasource remoteDatasource;

  ProductsRepositoryImpl(
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
  Future<Either<DioError, ProductsResponse>> getProductsByCategory(
      String catalogId) async {
    try {
      final httpResponse = await remoteDatasource.getProductsById(catalogId);

      if (httpResponse.response.statusCode == HttpStatus.ok) {
        print("Right ${httpResponse.data.products}");
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