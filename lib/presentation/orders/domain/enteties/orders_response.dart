import 'package:optlove/presentation/orders/data/models/order_info.dart';

import '../../data/models/statuses.dart';

class OrdersResponse  {
  final bool result;
  final List<OrderInfo> data;
  final Statuses statuses;
  final String? global_count;
  final String? global_status;
  final String? title_status;

  OrdersResponse({this.global_status, this.title_status, required this.data, required this.result,required this.statuses, required this.global_count});

  factory OrdersResponse.fromJson(Map<String, dynamic> json){
    return OrdersResponse(
        result: json['result'] as bool,
        data: List<OrderInfo>.from(
          (json['data'] as List<dynamic>).map(
                (e) => OrderInfo.fromJson(e as Map<String, dynamic>),
          ),
        ),
        statuses: Statuses.fromJson(json['statuses'] as Map<String, dynamic>),
      global_count: json['global_count'] as String?,
      global_status: json['global_status'] as String?,
      title_status: json['title_status'] as String?,
    );
  }
}