import 'package:freezed_annotation/freezed_annotation.dart';

part 'patient_model.freezed.dart';

@freezed
abstract class PatientModel with _$PatientModel {
  factory PatientModel({
    final String? id,
    final String? fullName,
    final int? age,
    final String? email,
    final String? phone,
    final String? gender,
    final String? condition,
    final String? treatment,
    final DateTime? lastSession,
  }) = _PatientModel;
}
