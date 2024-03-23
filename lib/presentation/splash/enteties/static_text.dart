import 'package:freezed_annotation/freezed_annotation.dart';

part 'static_text.freezed.dart';
@freezed
class Static with _$Static {
  const factory Static({
    required String address_empty,
  }) = _Static;

  factory Static.fromJson(Map<String, dynamic> json) {
    return Static(
      address_empty: json['address_empty'] as String,
    );
  }
}