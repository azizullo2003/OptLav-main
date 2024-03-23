import 'package:freezed_annotation/freezed_annotation.dart';

part 'company.freezed.dart';

@freezed
class Company with _$Company {
  const factory Company({
    required String id,
    required String name,
    required String favorites,
    required String? opisanie,
    required String? summa_skidka,
    required String? raz_skidka,
    required String address,
    required String inn,
     int? count_prod,
     String? bic,
     String? ogrn,
     String? cor_account,
     String? pay_account,
     String? bank,
     String? recipient,
    String? favorit_id,
     String? dostavka,
  }) = _Company;

  factory Company.fromJson(Map<String, dynamic> json) {
    return Company(
        id: json['id'] as String,
        name: json['name'] as String,
        opisanie: json['opisanie'] as String?,
        summa_skidka: json['summa_skidka'] as String?,
        raz_skidka: json['raz_skidka'] as String?,
        address: json['address'] as String,
        favorites: json['favorites'] as String,
        inn: json['inn'] as String,
        count_prod: json['count_prod'] as int?,
        bic: json['bic'] as String?,
        ogrn: json['ogrn'] as String?,
        dostavka: json['dostavka'] as String?,
        favorit_id: json['favorit_id'] as String?,
        cor_account: json['cor_account'] as String?,
        pay_account: json['pay_account'] as String?,
        bank: json['bank'] as String?,
        recipient: json['recipient'] as String?);
  }
}
