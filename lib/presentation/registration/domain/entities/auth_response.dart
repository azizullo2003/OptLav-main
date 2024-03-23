import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/models/user_info.dart';

part 'auth_response.freezed.dart';

@freezed
class AuthResponse with _$AuthResponse {
  const factory AuthResponse({
    required bool result,
    UserInfo? user_info,

  }) = _AuthResponse;

  factory AuthResponse.fromJson(Map<String, dynamic>? json) {
    return AuthResponse(
        result: json!['result'] as bool,
        user_info: UserInfo.fromJson(json['user_info'] as Map<String, dynamic>)
    );
  }
}