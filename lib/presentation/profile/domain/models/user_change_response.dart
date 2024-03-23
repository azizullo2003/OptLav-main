class UserChangeResponse {
  final bool result;
  final String? msg;

  UserChangeResponse({required this.result, required this.msg});

  factory UserChangeResponse.fromJson(Map<String, dynamic> json){
    return UserChangeResponse(
      result: json['result'] as bool,
      msg: json['msg'] as String?
    );
  }

}