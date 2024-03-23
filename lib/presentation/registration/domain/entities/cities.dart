import 'package:freezed_annotation/freezed_annotation.dart';

part 'cities.freezed.dart';
//part 'cities.g.dart';

@freezed
class Cities with _$Cities {
  const factory Cities({
    required String id,
    required String country_id,
    required String region_id,
    required String? city_id,
    required String? name,
    required String? region_name,
    required String? country_name,
    required String? adres,
    required String? descrip,
  }) = _Cities;

  factory Cities.fromJson(Map<String, dynamic> json) {
    return Cities(
      id: json['id'] as String,
      country_id: json['country_id'] as String,
        region_id: json['region_id'] as String,
        name: json['name'] as String?,
      region_name: json['region_name'] as String?,
      country_name: json['country_name'] as String?,
      adres: json['adres'] as String?,
      city_id: json['city_id'] as String?,
      descrip: json['descrip'] as String?,
    );
  }
}