import 'package:freezed_annotation/freezed_annotation.dart';
part 'ads_function_response.freezed.dart';

@freezed
class AdsFunctionResponse with _$AdsFunctionResponse {
  const factory AdsFunctionResponse({
    required bool result,
    required bool success,
  }) = _AdsFunctionResponse;

  factory AdsFunctionResponse.fromJson(Map<String, dynamic> json) {
    return AdsFunctionResponse(
      result: json['result'] as bool,
      success: json['success'] as bool,
    );
  }
}
