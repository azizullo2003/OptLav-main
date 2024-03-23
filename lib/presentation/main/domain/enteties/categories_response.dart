import '../../ data/models/category.dart';

class CategoriesResponse  {
  final bool result;
  final List<Category> categories;

  CategoriesResponse({required this.categories, required this.result,});

  factory CategoriesResponse.fromJson(Map<String, dynamic> json){
    return CategoriesResponse(
        result: json['result'] as bool,
        categories: List<Category>.from(
          (json['categories'] as List<dynamic>).map(
                (e) => Category.fromJson(e as Map<String, dynamic>),
          ),
        )
    );
  }
}