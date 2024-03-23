import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:optlove/presentation/main/%20data/models/product.dart';
part 'actions_response.freezed.dart';

@freezed
class ActionsResponse with _$ActionsResponse {
  const factory ActionsResponse({
    required bool result,
    required List<Product> actions,
  }) = _ActionsResponse;

  factory ActionsResponse.fromJson(Map<String, dynamic> json) {
    return ActionsResponse(
      result: json['result'] as bool,
        actions: List<Product>.from(
          (json['actions'] as List<dynamic>).map(
                (e) => Product.fromJson(e as Map<String, dynamic>),
          ),
        )
    );
  }
}