class StandartResponse  {
  final bool result;
  final String? msg;

  StandartResponse({this.msg, required this.result,});

  factory StandartResponse.fromJson(Map<String, dynamic> json){
    return StandartResponse(
      result: json['result'] as bool,
      msg: json['msg'] as String?
    );
  }
}