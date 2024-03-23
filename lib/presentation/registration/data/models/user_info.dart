class UserInfo {
  final String id;
  final String? email;
  final String phone;
  final String? inn;
  final String? name;
  final String? ogrn;
  final String? fphone;
  final String inn_correct;
  final String? asres_odin;

  UserInfo({
    this.inn,
    this.name,
    this.email,
    required this.phone,
    required this.id,
    required this.inn_correct,
    this.ogrn,
    this.fphone,
    this.asres_odin
  });

  factory UserInfo.fromJson(Map<String, dynamic> json) {
    return UserInfo(
      id: json['id'] as String,
      email: json['email'] as String?,
      phone: json['phone'] as String,
      inn: json['inn'] as String?,
      name: json['name'] as String?,
      ogrn: json['ogrn'] as String?,
      fphone: json['fphone'] as String?,
        asres_odin: json['asres_odin'] as String?,
        inn_correct : json['inn_correct'] as String
    );
  }
}
