import 'package:flutter_riverpod/legacy.dart';
import 'package:physio_ghar_demo/features/schedule_and_session_mgmt/enum/schedule_tab_bar_enum.dart';
import 'package:physio_ghar_demo/features/schedule_and_session_mgmt/provider/state/schedule_tab_bar_state/schedule_tab_bar_state.dart';

class ScheduleTabNotifier extends StateNotifier<ScheduleTabBarState> {
  ScheduleTabNotifier() : super(ScheduleTabBarState());

  void updateTab({required ScheduleTabBarEnum tab}) {
    state = state.copyWith(selectedTab: tab);
  }
}

final providerOfScheduleTab =
    StateNotifierProvider<ScheduleTabNotifier, ScheduleTabBarState>((ref) {
      return ScheduleTabNotifier();
    });
