import '../../ data/models/subcategory.dart';

class SubcategoriesResponse {
  final bool result;
  final List<Subcategory> subcategories;

  SubcategoriesResponse({
    required this.subcategories,
    required this.result,
  });

  factory SubcategoriesResponse.fromJson(Map<String, dynamic> json) {
    return SubcategoriesResponse(
        result: json['result'] as bool,
        subcategories: List<Subcategory>.from(
          (json['subcategories'] as List<dynamic>).map(
            (e) => Subcategory.fromJson(e as Map<String, dynamic>),
          ),
        ));
  }
}
