import 'package:freezed_annotation/freezed_annotation.dart';

import 'block_model.dart';

class AboutBlock {
  @JsonKey(name: '0')
  final BlockModel zero;
  @JsonKey(name: '1')
  final BlockModel one;
  @JsonKey(name: '2')
  final BlockModel two;
  @JsonKey(name: '3')
  final BlockModel thee;
  @JsonKey(name: '4')
  final BlockModel four;

  AboutBlock({
    required this.zero,
    required this.one,
    required this.two,
    required this.thee,
    required this.four,
  });

  factory AboutBlock.fromJson(Map<String, dynamic> json) {
    return AboutBlock(
      zero: BlockModel.fromJson(json['0'] as Map<String, dynamic>),
      one: BlockModel.fromJson(json['1'] as Map<String, dynamic>),
      two: BlockModel.fromJson(json['2'] as Map<String, dynamic>),
      thee: BlockModel.fromJson(json['3'] as Map<String, dynamic>),
      four: BlockModel.fromJson(json['4'] as Map<String, dynamic>),
    );
  }
}
