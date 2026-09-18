import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:physio_ghar_demo/features/shared/utils/app_colors.dart';

class ScheduleWeekHeader extends ConsumerStatefulWidget {
  const ScheduleWeekHeader({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _ScheduleWeekHeaderState();
}

class _ScheduleWeekHeaderState extends ConsumerState<ScheduleWeekHeader> {
  String get currentWeek {
    final today = DateTime.now();

    // DateTime.weekday:
    // Monday = 1
    // Tuesday = 2
    // ...
    // Sunday = 7

    // Calculate how many days to go back to Sunday.
    final daysFromSunday = today.weekday % 7;

    final sunday = DateTime(
      today.year,
      today.month,
      today.day,
    ).subtract(Duration(days: daysFromSunday));

    // Friday is 5 days after Sunday.
    final friday = sunday.add(const Duration(days: 5));

    final startDay = DateFormat('dd').format(sunday);
    final endDay = DateFormat('dd').format(friday);
    final month = DateFormat('MMMM').format(friday);

    return '$startDay – $endDay $month';
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'CURRENT WEEK',
                style: GoogleFonts.ibmPlexMono(
                  fontSize: 8.spMin,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 1.2,
                  color: AppColors.mutedText,
                ),
              ),

              const SizedBox(height: 5),

              Text(
                currentWeek,
                style: GoogleFonts.fraunces(
                  fontSize: 22.spMin,
                  fontWeight: FontWeight.w700,
                  color: AppColors.primaryText,
                ),
              ),
            ],
          ),
        ),

        Container(
          width: 42.spMin,
          height: 42.spMin,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(13),
          ),
          child: const Icon(
            Icons.calendar_month_outlined,
            color: AppColors.primary,
          ),
        ),
      ],
    );
  }
}
