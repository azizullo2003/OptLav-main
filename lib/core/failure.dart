import 'package:freezed_annotation/freezed_annotation.dart';
part 'failure.freezed.dart';

@freezed
class Failure<T> with _$Failure {
  const factory Failure.connectionFailure() = ConnectionFailure;

  const factory Failure.serverFailure({required int statusCode}) =
  ServerFailure;

  const factory Failure.customFailure({required T info}) = CustomFailure;

  const factory Failure.unknownFailure([String? message]) = UnknownFailure;
}
