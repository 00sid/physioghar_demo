import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:physio_ghar_demo/features/schedule_and_session_mgmt/enum/schedule_status_enum.dart';

part 'schedule_model.freezed.dart';

@freezed
abstract class ScheduleModel with _$ScheduleModel {
  factory ScheduleModel({
    final ScheduleStatusEnum? status,
    final DateTime? scheduleTime,
    final String? patientName,
    final String? treatment,
    final String? id,
  }) = _ScheduleModel;
}
