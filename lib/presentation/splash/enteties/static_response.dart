import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:optlove/presentation/splash/enteties/static_text.dart';

part 'static_response.freezed.dart';
@freezed
class StaticResponse with _$StaticResponse {
  const factory StaticResponse({
    required bool result,
    required Static data,

  }) = _StaticResponse;

  factory StaticResponse.fromJson(Map<String, dynamic> json) {
    return StaticResponse(
      result: json['result'] as bool,
      data: Static.fromJson(json['data'] as Map<String, dynamic>),
    );
  }
}