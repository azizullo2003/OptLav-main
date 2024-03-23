import '../../../main/ data/models/company.dart';

class FavoriteResponse  {
  final bool result;
  final List<Company> massiv_id;

  FavoriteResponse({required this.massiv_id, required this.result,});

  factory FavoriteResponse.fromJson(Map<String, dynamic> json){
    return FavoriteResponse(
      result: json['result'] as bool,
        massiv_id: List<Company>.from(
          (json['massiv_id'] as List<dynamic>).map(
                (e) => Company.fromJson(e as Map<String, dynamic>),
          ),
        )
    );
  }
}