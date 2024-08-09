import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:optlove/presentation/ads/data/models/ads_city_model.dart';
part 'ads_city_response.freezed.dart';

@freezed
class AdsCityResponse with _$AdsCityResponse {
  const factory AdsCityResponse({
    required bool result,
    required List<AdsCity> city,
  }) = _AdsCityResponse;

  factory AdsCityResponse.fromJson(Map<String, dynamic> json) {
    return AdsCityResponse(
      result: json['result'] as bool,
      city: List<AdsCity>.from(
        (json['city'] as List<dynamic>).map(
          (e) => AdsCity.fromJson(e as Map<String, dynamic>),
        ),
      ),
    );
  }
}
