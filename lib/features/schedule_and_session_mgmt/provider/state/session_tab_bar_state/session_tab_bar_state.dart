import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:physio_ghar_demo/features/schedule_and_session_mgmt/enum/session_tab_bar_enum.dart';

part 'session_tab_bar_state.freezed.dart';

@freezed
abstract class SessionTabBarState with _$SessionTabBarState {
  factory SessionTabBarState({
    @Default(SessionTabBarEnum.requests) final SessionTabBarEnum selectedTab,
  }) = _SessionTabBarState;
}
