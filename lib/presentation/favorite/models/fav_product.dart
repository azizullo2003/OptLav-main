import 'package:freezed_annotation/freezed_annotation.dart';

part 'fav_product.freezed.dart';

@freezed
class FavProduct with _$FavProduct {
  const factory FavProduct({
    required String id,
    required String firm_id,
    required String name,
     String? descrip,
    required String price_before,
    String? price_action,
    String? image,
    required String firm_name,
    required String un_name,
  }) = _FavProduct;

  factory FavProduct.fromJson(Map<String, dynamic> json) {
    return FavProduct(
      id: json['id'] as String,
      firm_id: json['firm_id'] as String,
      name: json['name'] as String,
      descrip: json['descrip'] as String?,
      price_before: json['price_before'] as String,
      price_action: json['price_action'] as String?,
      image: json['image'] as String?,
      firm_name: json['firm_name'] as String,
      un_name: json['un_name'] as String,
    );
  }
}