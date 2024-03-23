import 'package:freezed_annotation/freezed_annotation.dart';

part 'delivery_address.freezed.dart';
@freezed
class DeliveryAddress with _$DeliveryAddress {
  const factory DeliveryAddress({
     String? id,
    required String city,
    required String title,
    String? descrip,
  }) = _DeliveryAddress;

  factory DeliveryAddress.fromJson(Map<String, dynamic> json) {
    return DeliveryAddress(
        id: json['id'] as String?,
      city: json['city'] as String,
      title: json['title'] as String,
      descrip: json['descrip'] as String?,



    );
  }
}