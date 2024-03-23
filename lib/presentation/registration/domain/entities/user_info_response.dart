import '../../data/models/user_info.dart';
import 'cities.dart';

class UserInfoResponse  {
  final bool result;
  final UserInfo user_info;
  final List <Cities> locations;

  UserInfoResponse({required this.locations, required this.user_info, required this.result,});

  factory UserInfoResponse.fromJson(Map<String, dynamic> json){
    return UserInfoResponse(
      result: json['result'] as bool,
      user_info: UserInfo.fromJson(json['user_info'] as Map<String, dynamic>),
      locations: List<Cities>.from(
        (json['locations'] as List<dynamic>).map(
              (e) => Cities.fromJson(e as Map<String, dynamic>),
        ),
      ),
    );
  }
}