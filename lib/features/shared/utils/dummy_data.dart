import 'package:physio_ghar_demo/features/schedule_and_session_mgmt/enum/session_status.dart';
import 'package:physio_ghar_demo/features/shared/enum/session_location_enum.dart';
import 'package:physio_ghar_demo/features/shared/model/complain/complain_model.dart';
import 'package:physio_ghar_demo/features/shared/model/patient/patient_model.dart';
import 'package:physio_ghar_demo/features/shared/model/session/session_model.dart';
import 'package:physio_ghar_demo/features/shared/model/session_note/session_note_model.dart';

final List<ComplainModel> kDummyComplains = [
  ComplainModel(
    category: 'Booking Issue',
    subject: 'Unable to reschedule appointment',
    description:
        'I was unable to reschedule a patient appointment from the schedule section.',
    date: '10 Sept 2026',
    status: "Submitted",
  ),
];

final times = [
  '09:00 AM',
  '10:00 AM',
  '11:00 AM',
  '12:00 PM',
  '01:00 PM',
  '02:00 PM',
  '03:00 PM',
  '04:00 PM',
];

final now = DateTime.now();

final kDummyPatientList = [
  PatientModel(
    id: 'PAT-001',
    fullName: 'Sita Sharma',
    age: 42,
    gender: 'Female',
    phone: '+977 9841234567',
    email: 'sita.sharma@example.com',
    condition: 'Lower Back Pain',
    treatment: 'Manual Therapy & Strengthening',
    lastSession: DateTime(now.year, now.month, now.day - 1, 11, 0),
  ),
  PatientModel(
    id: 'PAT-002',
    fullName: 'Ram Thapa',
    age: 35,
    gender: 'Male',
    phone: '+977 9812345678',
    email: 'ram.thapa@example.com',
    condition: 'Knee Rehabilitation',
    treatment: 'Strengthening & Mobility',
    lastSession: DateTime(now.year, now.month, now.day - 2, 14, 0),
  ),
  PatientModel(
    id: 'PAT-003',
    fullName: 'Anita Rai',
    age: 29,
    gender: 'Female',
    phone: '+977 9865432109',
    email: 'anita.rai@example.com',
    condition: 'Shoulder Rehabilitation',
    treatment: 'Mobility & Rehabilitation',
    lastSession: DateTime(now.year, now.month, now.day - 3, 10, 0),
  ),
  PatientModel(
    id: 'PAT-004',
    fullName: 'Bikash KC',
    age: 27,
    gender: 'Male',
    phone: '+977 9801122334',
    email: 'bikash.kc@example.com',
    condition: 'Sports Injury',
    treatment: 'Sports Injury Recovery',
    lastSession: DateTime(now.year, now.month, now.day - 4, 15, 0),
  ),
];

final kDummySessionList = [
  // =========================
  // SITA SHARMA
  // =========================
  SessionModel(
    sessionId: "1",
    patientId: "PAT-001",
    patient: 'Sita Sharma',
    treatment: 'Back Pain Rehabilitation',
    sessionDate: DateTime(now.year, now.month, now.day - 3, 9, 0),
    sessionStatus: SessionStatusEnum.completed,
    location: SessionLocationEnum.home,
  ),
  SessionModel(
    sessionId: "2",
    patientId: "PAT-001",
    patient: 'Sita Sharma',
    treatment: 'Mobility & Stretching',
    sessionDate: DateTime(now.year, now.month, now.day - 2, 10, 0),
    sessionStatus: SessionStatusEnum.completed,
    location: SessionLocationEnum.clinic,
  ),
  SessionModel(
    sessionId: "3",
    patientId: "PAT-001",
    patient: 'Sita Sharma',
    treatment: 'Initial Assessment',
    sessionDate: DateTime(now.year, now.month, now.day - 1, 11, 0),
    sessionStatus: SessionStatusEnum.completed,
    location: SessionLocationEnum.clinic,
  ),

  // =========================
  // RAM THAPA
  // =========================
  SessionModel(
    sessionId: "4",
    patientId: "PAT-002",
    patient: 'Ram Thapa',
    treatment: 'Knee Rehabilitation',
    sessionDate: DateTime(now.year, now.month, now.day - 4, 12, 0),
    sessionStatus: SessionStatusEnum.completed,
    location: SessionLocationEnum.home,
  ),
  SessionModel(
    sessionId: "5",
    patientId: "PAT-002",
    patient: 'Ram Thapa',
    treatment: 'Knee Mobility',
    sessionDate: DateTime(now.year, now.month, now.day - 2, 14, 0),
    sessionStatus: SessionStatusEnum.completed,
    location: SessionLocationEnum.home,
  ),

  // =========================
  // ANITA RAI
  // =========================
  SessionModel(
    sessionId: "6",
    patientId: "PAT-003",
    patient: 'Anita Rai',
    treatment: 'Shoulder Rehabilitation',
    sessionDate: DateTime(now.year, now.month, now.day, 10, 0),
    sessionStatus: SessionStatusEnum.request,
    location: SessionLocationEnum.home,
  ),

  // =========================
  // BIKASH KC
  // =========================
  SessionModel(
    sessionId: "7",
    patientId: "PAT-004",
    patient: 'Bikash KC',
    treatment: 'Shoulder Rehabilitation',
    sessionDate: DateTime(now.year, now.month, now.day + 1, 13, 0),
    sessionStatus: SessionStatusEnum.request,
    location: SessionLocationEnum.clinic,
  ),

  // =========================
  // UPCOMING SESSIONS
  // =========================
  SessionModel(
    sessionId: "8",
    patientId: "PAT-001",
    patient: 'Sita Sharma',
    treatment: 'Back Pain',
    sessionDate: DateTime(now.year, now.month, now.day + 1, 15, 0),
    sessionStatus: SessionStatusEnum.upcoming,
    location: SessionLocationEnum.home,
  ),
  SessionModel(
    sessionId: "9",
    patientId: "PAT-002",
    patient: 'Ram Thapa',
    treatment: 'Knee Rehabilitation',
    sessionDate: DateTime(now.year, now.month, now.day, 16, 0),
    sessionStatus: SessionStatusEnum.upcoming,
    location: SessionLocationEnum.clinic,
  ),
];

final kDummySessionNoteList = [
  SessionNoteModel(
    patientId: "PAT-001",
    noteId: "1",
    sessionNote: 'Patient showed improved knee mobility.',
    exercise: 'Leg raises\nKnee flexion\nBalance exercises',
    nextSession: 'Progress strengthening exercises.',
    date: DateTime.now(),
  ),
];
