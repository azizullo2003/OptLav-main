import 'package:freezed_annotation/freezed_annotation.dart';


part 'user_inn_info.freezed.dart';
@freezed
class UserInnInfo with _$UserInnInfo {
  const factory UserInnInfo({
    required String inn,
    required String ogrn,
    required String name,
  }) = _UserInnInfo;

  factory UserInnInfo.fromJson(Map<String, dynamic> json) {
    return UserInnInfo(
      inn: json['inn'] as String,
      ogrn: json['ogrn'] as String,
      name: json['name'] as String,
    );
  }
}