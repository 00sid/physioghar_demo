import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:physio_ghar_demo/features/schedule_and_session_mgmt/views/widgets/schedule/schedule_add_time_slot_button.dart';
import 'package:physio_ghar_demo/features/schedule_and_session_mgmt/views/widgets/schedule/schedule_day_selector.dart';
import 'package:physio_ghar_demo/features/schedule_and_session_mgmt/views/widgets/schedule/schedule_list.dart';
import 'package:physio_ghar_demo/features/schedule_and_session_mgmt/views/widgets/schedule/schedule_title.dart';
import 'package:physio_ghar_demo/features/schedule_and_session_mgmt/views/widgets/schedule/schedule_week_header.dart';
import 'package:physio_ghar_demo/features/shared/extensions/number_extension.dart';

class ScheduleSection extends ConsumerStatefulWidget {
  const ScheduleSection({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _ScheduleSectionState();
}

class _ScheduleSectionState extends ConsumerState<ScheduleSection> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.zero,
      children: [
        12.hSizedBox,
        ScheduleWeekHeader(),
        12.hSizedBox,
        ScheduleDaySelector(),
        12.hSizedBox,
        ScheduleTitle(),
        12.hSizedBox,
        ScheduleList(),
        12.hSizedBox,
        ScheduleAddTimeSlotButton(),
        50.hSizedBox,
      ],
    );
  }
}
