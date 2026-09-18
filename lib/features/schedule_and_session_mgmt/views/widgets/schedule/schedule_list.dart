import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:physio_ghar_demo/features/schedule_and_session_mgmt/provider/schedule/schedule_list_provider.dart';
import 'package:physio_ghar_demo/features/schedule_and_session_mgmt/provider/schedule/schedule_selected_date.dart';
import 'package:physio_ghar_demo/features/schedule_and_session_mgmt/views/widgets/schedule/schedule_time_slot.dart';
import 'package:physio_ghar_demo/features/shared/utils/app_colors.dart';

class ScheduleList extends ConsumerStatefulWidget {
  const ScheduleList({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ScheduleListState();
}

class _ScheduleListState extends ConsumerState<ScheduleList> {
  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
        final scheduleList = ref.watch(providerOfScheduleList);
        final selectedDate = ref.watch(providerOfScheduleSelectedDate);
        final filteredList = scheduleList
            .where((schedule) => schedule.scheduleTime!.day == selectedDate.day)
            .toList();

        if (filteredList.isEmpty) {
          return _buildEmptySchedule();
        }
        return Column(
          children: [
            ...filteredList.map((slot) => ScheduleTimeSlot(slot: slot)),
          ],
        );
      },
    );
  }

  Widget _buildEmptySchedule() {
    return Container(
      padding: const EdgeInsets.all(30),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
      ),
      child: Column(
        children: [
          const Icon(
            Icons.calendar_today_outlined,
            color: AppColors.mutedText,
            size: 35,
          ),

          const SizedBox(height: 12),

          Text(
            'No time slots',
            style: GoogleFonts.inter(
              fontSize: 15,
              fontWeight: FontWeight.w700,
              color: AppColors.primaryText,
            ),
          ),

          const SizedBox(height: 5),

          Text(
            'Add an available slot for this day.',
            style: GoogleFonts.inter(
              fontSize: 12,
              color: AppColors.secondaryText,
            ),
          ),
        ],
      ),
    );
  }
}
