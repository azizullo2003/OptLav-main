import '../../data/models/about_block.dart';

class AboutResponse {
  final List<AboutBlock> blok1;

  AboutResponse(
      {required this.blok1,
        });

  factory AboutResponse.fromJson(Map<String, dynamic> json) {
    return AboutResponse(
      blok1: List<AboutBlock>.from(
        (json['blok1'] as List<dynamic>).map(
              (e) => AboutBlock.fromJson(e as Map<String, dynamic>),
        ),
      ),
    );
  }
}