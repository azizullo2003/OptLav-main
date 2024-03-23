import 'package:optlove/presentation/profile/data/models/user_inn_info.dart';

class InnResponse {
  final bool result;
  final UserInnInfo? data;

  InnResponse({required this.result, required this.data});

  factory InnResponse.fromJson(Map<String, dynamic> json){
    return InnResponse(
      result: json['result'] as bool,
      data: UserInnInfo?.fromJson(json['data'] as Map<String, dynamic>),
    );
  }
}