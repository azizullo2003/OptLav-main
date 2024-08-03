import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:optlove/presentation/ads/data/models/ads_model.dart';
part 'ads_response.freezed.dart';

@freezed
class AdsResponse with _$AdsResponse {
  const factory AdsResponse({
    required bool result,
    required List<AdsModel> adsList,
  }) = _AdsResponse;

  factory AdsResponse.fromJson(Map<String, dynamic> json) {
    return AdsResponse(
      result: json['result'] as bool,
      adsList: List<AdsModel>.from(
        (json['adsList'] as List<dynamic>).map(
          (e) => AdsModel.fromJson(e as Map<String, dynamic>),
        ),
      ),
    );
  }
}
