import 'package:freezed_annotation/freezed_annotation.dart';
part 'adres.freezed.dart';

@freezed
class Adres with _$Adres {
  const factory Adres({
    required String title,
    required String id,
    required int key,
    String? descrip

  }) = _Adres;

  factory Adres.fromJson(Map<String, dynamic> json) {
    return Adres(
      title: json['title'] as String,
      id: json['id'] as String,
      descrip: json['descrip'] as String?,
      key: json['key'] as int,
    );
  }
}