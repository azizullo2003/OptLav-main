import 'package:freezed_annotation/freezed_annotation.dart';

part 'category.freezed.dart';

@freezed
class Category with _$Category {
  const factory Category({
    required String id,
    required String name,
    required String count,
    required String? imagesUrl,
  }) = _Category;

  factory Category.fromJson(Map<String, dynamic> json) {
    return Category(
      id: json['id'] as String,
      name: json['name'] as String,
      count: json['count_cat'] as String,
      imagesUrl: json['images_url'] as String?,
    );
  }
}
