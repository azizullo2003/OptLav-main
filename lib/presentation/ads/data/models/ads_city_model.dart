import 'package:freezed_annotation/freezed_annotation.dart';

part 'ads_city_model.freezed.dart';

@freezed
class AdsCity with _$AdsCity {
  const factory AdsCity({
    required String id,
    required String? region_id,
    required String? country_id,
    required String? name,
  }) = _AdsCity;

  factory AdsCity.fromJson(Map<String, dynamic> json) {
    return AdsCity(
      id: json['id'] as String,
      country_id: json['country_id'] as String,
      region_id: json['region_id'] as String?,
      name: json['name'] as String?,
    );
  }
}
