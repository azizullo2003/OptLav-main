import 'package:optlove/presentation/main/%20data/models/product.dart';

class ProductsResponse  {
  final bool result;
  final List<Product> products;

  ProductsResponse({required this.products, required this.result,});

  factory ProductsResponse.fromJson(Map<String, dynamic> json){
    return ProductsResponse(
        result: json['result'] as bool,
        products: List<Product>.from(
          (json['products'] as List<dynamic>).map(
                (e) => Product.fromJson(e as Map<String, dynamic>),
          ),
        )
    );
  }
}