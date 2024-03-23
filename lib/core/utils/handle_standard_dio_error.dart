import 'dart:io';

import 'package:dio/dio.dart';
import 'package:either_dart/either.dart';

import '../failure.dart';

Either<Failure<T>, DioError> handleStandardDioError<T>(DioError error) {
  if ([
    DioErrorType.cancel,
    DioErrorType.connectTimeout,
    DioErrorType.receiveTimeout,
    DioErrorType.sendTimeout,
  ].contains(error.type) ||
      error.error is SocketException ||
      error.error is HttpException) {
    return const Left(ConnectionFailure());
  }

  final statusCode = error.response?.statusCode;
  final requestData = error.requestOptions.data;
  // ignore: prefer_typing_uninitialized_variables
  var data;
  if (requestData is FormData) {
    data = {
      'fields': <String, String>{},
      'files': <String, String>{},
    };
    (data['fields'] as Map).addEntries(requestData.fields);
    (data['files'] as Map).addEntries(requestData.files
        .map((e) => MapEntry(e.key, e.value.filename ?? "Unknown"))
        .toList());
  } else if (requestData is Map) {
    data = requestData.map((key, value) => MapEntry(key.toString(), value));
  } else {
    data = requestData.toString();
  }
  // ignore: avoid-ignoring-return-values

  if (statusCode != null && statusCode >= 500 && statusCode < 600) {
    return Left(ServerFailure(statusCode: statusCode));
  }

  return Right(error);
}
