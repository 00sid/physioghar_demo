import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:physio_ghar_demo/features/schedule_and_session_mgmt/enum/session_status.dart';
import 'package:physio_ghar_demo/features/shared/enum/session_location_enum.dart';

part 'session_model.freezed.dart';

@freezed
abstract class SessionModel with _$SessionModel {
  factory SessionModel({
    final String? sessionId,
    final String? patient,
    final String? patientId,
    final String? status,
    final String? time,
    final String? day,
    final String? date,
    final String? treatment,
    final DateTime? sessionDate,
    final SessionStatusEnum? sessionStatus,
    final SessionLocationEnum? location,
  }) = _SessionModel;
}
