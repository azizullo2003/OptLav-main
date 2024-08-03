import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:optlove/presentation/ads/data/models/ads_category_model.dart';
part 'ads_category_response.freezed.dart';

@freezed
class AdsCategoryResponse with _$AdsCategoryResponse {
  const factory AdsCategoryResponse({
    required bool result,
    required List<AdsCategory> categories,
  }) = _AdsCategoryResponse;

  factory AdsCategoryResponse.fromJson(Map<String, dynamic> json) {
    return AdsCategoryResponse(
      result: json['result'] as bool,
      categories: List<AdsCategory>.from(
        (json['categories'] as List<dynamic>).map(
          (e) => AdsCategory.fromJson(e as Map<String, dynamic>),
        ),
      ),
    );
  }
}
