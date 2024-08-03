import 'package:freezed_annotation/freezed_annotation.dart';

part 'ads_category_model.freezed.dart';

@freezed
class AdsCategory with _$AdsCategory {
  const factory AdsCategory({
    required int id,
    required String name,
    required String? parent_id,
    required String? sorty,
    required String images_url,
    required int count,
  }) = _AdsCategory;

  factory AdsCategory.fromJson(Map<String, dynamic> json) {
    return AdsCategory(
      id: json['id'] as int,
      name: json['name'] as String,
      parent_id: json['parent_id'] as String?,
      sorty: json['sorty'] as String?,
      images_url: json['images_url'] as String,
      count: json['count'] as int,
    );
  }
}
