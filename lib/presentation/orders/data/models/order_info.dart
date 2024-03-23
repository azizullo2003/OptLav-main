import 'package:optlove/presentation/orders/data/models/order_products.dart';
import 'package:optlove/presentation/orders/data/models/statuses.dart';

class OrderInfo {
  final String id;
  final String? delivery;
  final String? payment;
  final String? name_payment;
  final String? name_adres;
  final String? name_delivery;
  final String? adres;
  final String status;
  final String? name_user;
  final String? orders_created;
  final String? sum;
  final String? id_user;
  final String? count_sum;
  final String? naimenov;
  final String? summa_skidka;
  final String? raz_skidka;
  final List<OrderProducts> product;
  final Statuses statuss;

  OrderInfo( {
    this.summa_skidka, this.raz_skidka,
    required this.id,
    this.delivery,
    this.payment,
    this.adres,
    required this.status,
    this.name_user,
    this.naimenov,
    this.orders_created,
    this.sum,
    this.count_sum,
    required this.product,
    required this.name_payment,
    required this.name_adres,
    required this.name_delivery,
    this.id_user,
    required this.statuss,
  });

  factory OrderInfo.fromJson(Map<String, dynamic> json) {
    return OrderInfo(
        id: json['id'] as String,
        delivery: json['delivery'] as String?,
        payment: json['payment'] as String?,
        status: json['status'] as String,
        id_user: json['id_user'] as String?,
        adres: json['adres'] as String?,
        raz_skidka: json['raz_skidka'] as String?,
        summa_skidka: json['summa_skidka'] as String?,
        name_user: json['name_user'] as String?,
        name_payment: json['name_payment'] as String?,
        name_adres: json['name_adres'] as String?,
        name_delivery: json['name_delivery'] as String?,
        orders_created: json['orders_created'] as String?,
        sum: json['sum'] as String?,
        count_sum: json['count_sum'] as String?,
        naimenov: json['naimenov'] as String?,
        statuss: Statuses.fromJson(json['statuss'] as Map<String, dynamic>),
        product: List<OrderProducts>.from(
          (json['product'] as List<dynamic>).map(
            (e) => OrderProducts.fromJson(e as Map<String, dynamic>),
          ),
        )
    );
  }
}
