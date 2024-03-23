class Deliveries  {
  final String id;
  final String delivery_name;
  final String price;

  Deliveries({required this.id,required this.delivery_name, required this.price});

  factory Deliveries.fromJson(Map<String, dynamic> json){
    return Deliveries(
      id: json['id'] as String,
      delivery_name: json['delivery_name'] as String,
      price: json['price'] as String,
    );
  }
}