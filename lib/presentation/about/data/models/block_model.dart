class BlockModel {
  final String header;
  final String text;

  BlockModel(
      {required this.header, required this.text,
      });

  factory BlockModel.fromJson(Map<String, dynamic> json) {
    return BlockModel(
      header: json['header'] as String,
      text: json['text'] as String,
    );
  }
}