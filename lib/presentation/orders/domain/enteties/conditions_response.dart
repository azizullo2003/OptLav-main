import '../../data/models/deliveries.dart';
import '../../data/models/delivery_address.dart';
import '../../data/models/type_price.dart';

class ConditionsResponse {
  final bool result;
  final List<TypePrice> type_price;
  final List<Deliveries> deliveries;
  final List<DeliveryAddress> adres;

  ConditionsResponse(
      {required this.result,
      required this.type_price,
      required this.deliveries,
        required this.adres});

  factory ConditionsResponse.fromJson(Map<String, dynamic> json) {
    return ConditionsResponse(
      result: json['result'] as bool,
      type_price: List<TypePrice>.from(
        (json['type_price'] as List<dynamic>).map(
          (e) => TypePrice.fromJson(e as Map<String, dynamic>),
        ),
      ),
      adres: List<DeliveryAddress>.from(
        (json['adres'] as List<dynamic>).map(
              (e) => DeliveryAddress.fromJson(e as Map<String, dynamic>),
        ),
      ),
      deliveries: List<Deliveries>.from(
        (json['deliveries'] as List<dynamic>).map(
              (e) => Deliveries.fromJson(e as Map<String, dynamic>),
        ),
      ),
    );
  }
}
