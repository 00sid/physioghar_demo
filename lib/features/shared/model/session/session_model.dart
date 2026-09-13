import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:physio_ghar_demo/features/shared/enum/session_location_enum.dart';

part 'session_model.freezed.dart';

@freezed
abstract class SessionModel with _$SessionModel {
  factory SessionModel({
    final String? patient,
    final String? status,
    final String? time,
    final String? day,
    final String? date,
    final String? treatment,
    final SessionLocationEnum? location,
  }) = _SessionModel;
}
