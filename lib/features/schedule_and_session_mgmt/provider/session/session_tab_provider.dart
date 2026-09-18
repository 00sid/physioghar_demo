import 'package:flutter_riverpod/legacy.dart';
import 'package:physio_ghar_demo/features/schedule_and_session_mgmt/enum/session_tab_bar_enum.dart';
import 'package:physio_ghar_demo/features/schedule_and_session_mgmt/provider/state/session_tab_bar_state/session_tab_bar_state.dart';

class SessionTabNotifier extends StateNotifier<SessionTabBarState> {
  SessionTabNotifier() : super(SessionTabBarState());

  void updateTab({required SessionTabBarEnum tab}) {
    state = state.copyWith(selectedTab: tab);
  }
}

final providerOfSessionTab =
    StateNotifierProvider<SessionTabNotifier, SessionTabBarState>((ref) {
      return SessionTabNotifier();
    });
