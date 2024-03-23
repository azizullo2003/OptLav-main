class Statuses {
  final String type_1;
  final String? count_1;
  final String type_2;
  final String? count_2;
  final String type_3;
  final String? count_3;
  final String type_4;
  final String? count_4;

  Statuses(
      {required this.type_1,
        this.count_1,
        required this.type_2,
        this.count_2,
        required this.type_3,
        this.count_3,
        required this.type_4,
        this.count_4,
      });

  factory Statuses.fromJson(Map<String, dynamic> json) {
    return Statuses(
        type_1: json['type_1'] as String,
        count_1: json['count_1'] as String?,
        type_2: json['type_2'] as String,
        count_2: json['count_2'] as String?,
        type_3: json['type_3'] as String,
        count_3: json['count_3'] as String?,
        type_4: json['type_4'] as String,
      count_4: json['count_4'] as String?,
    );
  }
}
