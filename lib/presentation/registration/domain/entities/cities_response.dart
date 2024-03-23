import 'package:optlove/presentation/registration/domain/entities/cities.dart';

//part 'cities_response.g.dart';

class CitiesResponse  {
  final bool result;
  final List<Cities> location;

  CitiesResponse({required this.location, required this.result,});

  factory CitiesResponse.fromJson(Map<String, dynamic> json){
    print("CitiesResponse");
    return CitiesResponse(
        result: json['result'] as bool,
        location: List<Cities>.from(
        (json['location'] as List<dynamic>).map(
          (e) => Cities.fromJson(e as Map<String, dynamic>),
    ),
    )
    );
  }
}