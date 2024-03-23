import 'package:freezed_annotation/freezed_annotation.dart';

import '../../ data/models/product.dart';

part 'top_response.freezed.dart';
@freezed
class TopResponse with _$TopResponse {
  const factory TopResponse({
    required bool result,
    required List<Product> prod_top,
  }) = _TopResponse;

  factory TopResponse.fromJson(Map<String, dynamic> json) {
    return TopResponse(
        result: json['result'] as bool,
        prod_top: List<Product>.from(
          (json['prod_top'] as List<dynamic>).map(
                (e) => Product.fromJson(e as Map<String, dynamic>),
          ),
        )
    );
  }
}