class OrderProducts {
  final String name;
  final String price;
  final String id_product;
  final String firm_id;
  final String user_id;
  final String? descrip;
  final String count;
  final String sum;
  final String? name_user;
  final String image;
  final String price_prod;
  final String un_name;
  final String count_from;

  OrderProducts({
    this.descrip,
    required this.price_prod,
    required this.un_name,
    required this.name,
    required this.price,
    required this.id_product,
    required this.sum,
    required this.firm_id,
    required this.user_id,
    required this.count,
    this.name_user,
    required this.image,
    required this.count_from,
  });

  factory OrderProducts.fromJson(Map<String, dynamic> json) {
    return OrderProducts(
      name: json['name'] as String,
      price: json['price'] as String,
      id_product: json['id_product'] as String,
      firm_id: json['firm_id'] as String,
      user_id: json['user_id'] as String,
      count: json['count'] as String,
      sum: json['sum'] as String,
      name_user: json['name_user'] as String?,
      image: json['image'] as String,
      descrip: json['descrip'] as String?,
      price_prod: json['price_prod'] as String,
      un_name: json['un_name'] as String,
      count_from: json['count_from'] as String,
    );
  }
}
