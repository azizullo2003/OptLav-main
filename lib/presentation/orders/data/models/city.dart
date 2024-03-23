import 'package:freezed_annotation/freezed_annotation.dart';
part 'city.freezed.dart';

@freezed
class City with _$City {
  const factory City({
    required String title,
    required int key,

  }) = _City;

  factory City.fromJson(Map<String, dynamic> json) {
    return City(
      title: json['title'] as String,
      key: json['key'] as int,
    );
  }
}