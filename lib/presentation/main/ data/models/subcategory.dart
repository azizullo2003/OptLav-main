import 'package:freezed_annotation/freezed_annotation.dart';

part 'subcategory.freezed.dart';

@freezed
class Subcategory with _$Subcategory {
  const factory Subcategory({
    required String id,
    required String name,
    required String count,
    required String? imagesUrl,
    // required String? catId,
  }) = _Subcategory;

  factory Subcategory.fromJson(Map<String, dynamic> json) {
    return Subcategory(
      id: json['id'] as String,
      name: json['name'] as String,
      count: json['count_cat'] as String,
      imagesUrl: json['images_url'] as String?,
      // catId: json['cat_id'] as String,
    );
  }
}
