import 'package:freezed_annotation/freezed_annotation.dart';

part 'session_note_model.freezed.dart';

@freezed
abstract class SessionNoteModel with _$SessionNoteModel {
  factory SessionNoteModel({
    final String? patientId,
    final String? noteId,
    final DateTime? date,
    final String? sessionNote,
    final String? exercise,
    final String? nextSession,
  }) = _SessionNoteModel;
}
