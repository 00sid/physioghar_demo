import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:physio_ghar_demo/features/schedule_and_session_mgmt/provider/schedule/schedule_selected_date.dart';
import 'package:physio_ghar_demo/features/shared/extensions/date_time_extension.dart';
import 'package:physio_ghar_demo/features/shared/extensions/number_extension.dart';
import 'package:physio_ghar_demo/features/shared/utils/app_colors.dart';

class ScheduleDaySelector extends ConsumerWidget {
  const ScheduleDaySelector({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedDate = ref.watch(providerOfScheduleSelectedDate);

    final today = DateTime.now();

    final currentDate = DateTime(today.year, today.month, today.day);

    // Sunday = 0
    // Monday = 1
    // ...
    // Saturday = 6
    final daysFromSunday = today.weekday % 7;

    final sunday = currentDate.subtract(Duration(days: daysFromSunday));

    // Sunday -> Friday
    final weekDays = List.generate(
      6,
      (index) => sunday.add(Duration(days: index)),
    );

    return SizedBox(
      height: 76,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: weekDays.length,
        separatorBuilder: (_, __) => const SizedBox(width: 8),
        itemBuilder: (context, index) {
          final date = weekDays[index];

          final selected = _isSameDay(date, selectedDate);

          return GestureDetector(
            onTap: () {
              ref.read(providerOfScheduleSelectedDate.notifier).state = date;
            },
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 180),
              width: 52,
              decoration: BoxDecoration(
                color: selected ? AppColors.primary : Colors.white,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    date.shortDayName.toUpperCase(),
                    style: GoogleFonts.inter(
                      fontSize: 10,
                      fontWeight: FontWeight.w600,
                      color: selected
                          ? Colors.white.withOpacity(.75)
                          : AppColors.secondaryText,
                    ),
                  ),

                  4.hSizedBox,

                  Text(
                    date.formattedDay,
                    style: GoogleFonts.fraunces(
                      fontSize: 20.spMin,
                      fontWeight: FontWeight.w700,
                      color: selected ? Colors.white : AppColors.primaryText,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  static bool _isSameDay(DateTime first, DateTime second) {
    return first.year == second.year &&
        first.month == second.month &&
        first.day == second.day;
  }
}
