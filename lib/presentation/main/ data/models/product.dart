import 'package:freezed_annotation/freezed_annotation.dart';

part 'product.freezed.dart';

@freezed
class Product with _$Product {
  const factory Product({
    required String id,
    required String firm_id,
    required String name,
    required String? opisanie,
     String? unit_id,
    required String count_package,
    required String price_before,
    String? price_action,
     String? price_from,
     String? count_from,
    required String count,
    required String prod_favorites,
    required String? image,
    String? name_image,
    required String firm_name,
    required String un_name,
  }) = _Product;

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'] as String,
      firm_id: json['firm_id'] as String,
      name: json['name'] as String,
      opisanie: json['opisanie'] as String?,
      unit_id: json['unit_id'] as String?,
      name_image: json['name_image'] as String?,
      count_package: json['count_package'] as String,
      price_before: json['price_before'] as String,
      price_from: json['price_from'] as String?,
      count_from: json['count_from'] as String?,
      price_action: json['price_action'] as String?,
      count: json['count'] as String,
      prod_favorites: json['prod_favorites'] as String,
      image: json['image'] as String?,
      firm_name: json['firm_name'] as String,
      un_name: json['un_name'] as String,
    );
  }
}