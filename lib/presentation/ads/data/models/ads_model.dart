import 'package:freezed_annotation/freezed_annotation.dart';

part 'ads_model.freezed.dart';

@freezed
class AdsModel with _$AdsModel {
  const factory AdsModel({
    required String? id,
    required String? type,
    required String? name,
    required String? description,
    required String? city_id,
    required String? price,
    required String? phone,
    required String? email,
    required String? user_id,
    required String? status,
    required String? category_id,
    required String? subcategory_id,
    required String? created_at,
    required String? approved_at,
    required String? end_at,
    required List<dynamic> images,
    required String? name_firm,
  }) = _AdsModel;

  factory AdsModel.fromJson(Map<String, dynamic> json) {
    return AdsModel(
      id: json['id'] as String?,
      type: json['type'] as String?,
      name: json['name'] as String?,
      description: json['description'] as String?,
      city_id: json['city_id'] as String?,
      price: json['price'] as String?,
      phone: json['phone'] as String?,
      email: json['email'] as String?,
      user_id: json['user_id'] as String?,
      status: json['status'] as String?,
      category_id: json['category_id'] as String?,
      subcategory_id: json['subcategory_id'] as String?,
      created_at: json['created_at'] as String?,
      approved_at: json['approved_at'] as String?,
      end_at: json['end_at'] as String?,
      images: json['images'] as List<dynamic>,
      name_firm: json['name_firm'] as String?,
    );
  }
}
