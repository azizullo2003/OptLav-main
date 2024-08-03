import 'package:json_annotation/json_annotation.dart';

part "AboutResp.g.dart";

@JsonSerializable()
class ABoutResponse {
  @JsonKey(name: "stranica")
  final String stranica;

  ABoutResponse({
    required this.stranica,
  });

  factory ABoutResponse.fromJson(Map<String, dynamic> json) =>
      _$ABoutResponseFromJson(json);
  Map<String, dynamic> toJson() => _$ABoutResponseToJson(this);
}
