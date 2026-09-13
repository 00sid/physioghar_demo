import 'package:freezed_annotation/freezed_annotation.dart';

part 'complain_model.freezed.dart';
part 'complain_model.g.dart';

@freezed
abstract class ComplainModel with _$ComplainModel {
  factory ComplainModel({
    final String? category,
    final String? subject,
    final String? description,
    final String? date,
    final String? status,
  }) = _ComplainModel;

  factory ComplainModel.fromJson(Map<String, dynamic> json) =>
      _$ComplainModelFromJson(json);
}
