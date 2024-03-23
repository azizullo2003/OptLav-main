class Location {
  final String name;
  final String id;
  final String country_id;
  final String region_id;
  final String city_id;
  final String adres;
  final String descrip;
  final String city_name;

  Location({
    required this.id,
    required this.country_id,
    required this.region_id,
    required this.city_id,
    required this.adres,
    required this.descrip,
    required this.city_name,
    required this.name,
  });

  factory Location.fromJson(Map<String, dynamic> json) {
    return Location(
      name: json['name'] as String,
      id: json['id'] as String,
      country_id: json['country_id'] as String,
      region_id: json['region_id'] as String,
      city_id: json['city_id'] as String,
      adres: json['adres'] as String,
      descrip: json['descrip'] as String,
      city_name: json['city_name'] as String,

    );
  }
}
