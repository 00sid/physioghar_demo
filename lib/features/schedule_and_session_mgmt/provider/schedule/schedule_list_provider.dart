import 'package:flutter_riverpod/legacy.dart';
import 'package:physio_ghar_demo/features/schedule_and_session_mgmt/enum/schedule_status_enum.dart';
import 'package:physio_ghar_demo/features/schedule_and_session_mgmt/provider/session/upcoming_list_provider.dart';
import 'package:physio_ghar_demo/features/shared/model/schedule/schedule_model.dart';
import 'package:physio_ghar_demo/features/shared/model/session/session_model.dart';

class ScheduleListNotifier extends StateNotifier<List<ScheduleModel>> {
  ScheduleListNotifier({required List<SessionModel> upcomingSession})
    : super([]) {
    state = upcomingSession.asMap().entries.map((entry) {
      final index = entry.key;
      final session = entry.value;

      return ScheduleModel(
        id: (index + 1).toString(),
        patientName: session.patient,
        scheduleTime: session.sessionDate,
        status: ScheduleStatusEnum.booked,
        treatment: session.treatment,
      );
    }).toList();
  }

  void addSchedule(ScheduleModel schedule) {
    final newId = (state.length + 1).toString();

    state = [...state, schedule.copyWith(id: newId)];
  }

  void updateSchedule(ScheduleModel schedule) {
    state = state.map((item) {
      if (item.id == schedule.id) {
        return item.copyWith(
          patientName: schedule.patientName,
          scheduleTime: schedule.scheduleTime,
          status: schedule.status,
          treatment: schedule.treatment,
        );
      }

      return item;
    }).toList();
  }
}

final providerOfScheduleList =
    StateNotifierProvider<ScheduleListNotifier, List<ScheduleModel>>((ref) {
      final upcomingSession = ref.watch(providerOfUpcomingList);
      return ScheduleListNotifier(upcomingSession: upcomingSession);
    });
