class TypePrice  {
  final String title;
  final int key;

  TypePrice({required this.title,required this.key});

  factory TypePrice.fromJson(Map<String, dynamic> json){
    return TypePrice(
      title: json['title'] as String,
      key: json['key'] as int,
    );
  }
}