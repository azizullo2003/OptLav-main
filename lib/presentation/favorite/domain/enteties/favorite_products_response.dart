import 'package:optlove/presentation/main/%20data/models/product.dart';

class FavoriteProductsResponse  {
  final bool result;
  final List<Product> massiv_id;

  FavoriteProductsResponse({required this.massiv_id, required this.result,});

  factory FavoriteProductsResponse.fromJson(Map<String, dynamic> json){
    return FavoriteProductsResponse(
        result: json['result'] as bool,
        massiv_id: List<Product>.from(
          (json['massiv_id'] as List<dynamic>).map(
                (e) => Product.fromJson(e as Map<String, dynamic>),
          ),
        )
    );
  }
}