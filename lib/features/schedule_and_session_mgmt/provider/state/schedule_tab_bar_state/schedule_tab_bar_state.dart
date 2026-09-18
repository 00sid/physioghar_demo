import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:physio_ghar_demo/features/schedule_and_session_mgmt/enum/schedule_tab_bar_enum.dart';

part 'schedule_tab_bar_state.freezed.dart';

@freezed
abstract class ScheduleTabBarState with _$ScheduleTabBarState {
  factory ScheduleTabBarState({
    @Default(ScheduleTabBarEnum.schedule) final ScheduleTabBarEnum selectedTab,
  }) = _ScheduleTabBarState;
}
