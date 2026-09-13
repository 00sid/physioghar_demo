import 'package:physio_ghar_demo/features/shared/enum/session_location_enum.dart';
import 'package:physio_ghar_demo/features/shared/model/complain/complain_model.dart';
import 'package:physio_ghar_demo/features/shared/model/session/session_model.dart';

final kDummySession = [
  SessionModel(
    time: "10:00 AM",
    patient: "Sita Sharma",
    treatment: "Back Pain",
    location: SessionLocationEnum.home,
    status: "Upcoming",
  ),
  SessionModel(
    time: "2:00 AM",
    patient: "Ram Thapa",
    treatment: "Knee Rehabilitation",
    location: SessionLocationEnum.clinic,
    status: "Upcoming",
  ),
];
final kDummyUpcomingSession = [
  SessionModel(
    date: "MON",
    day: "14",
    time: "11:30 AM",
    patient: "Mina Karki",
    treatment: "Shoulder Therapy",
    location: SessionLocationEnum.home,
  ),
  SessionModel(
    date: "TUE",
    day: "15",
    time: "3:00 PM",
    patient: "Bikash Gurung",
    treatment: "Sports Injury",
    location: SessionLocationEnum.clinic,
  ),
];

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
