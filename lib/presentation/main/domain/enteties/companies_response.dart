import 'package:optlove/presentation/main/%20data/models/company.dart';

class CompaniesResponse  {
  final bool result;
  final Company user_info;

  CompaniesResponse({required this.user_info, required this.result,});

  factory CompaniesResponse.fromJson(Map<String, dynamic> json){
    return CompaniesResponse(
        result: json['result'] as bool,
      user_info: Company.fromJson(json['user_info'] as Map<String, dynamic>),
    );
  }
}