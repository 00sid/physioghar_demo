import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:physio_ghar_demo/features/schedule_and_session_mgmt/provider/schedule/schedule_selected_date.dart';
import 'package:physio_ghar_demo/features/shared/extensions/date_time_extension.dart';
import 'package:physio_ghar_demo/features/shared/utils/app_colors.dart';

class ScheduleTitle extends ConsumerStatefulWidget {
  const ScheduleTitle({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ScheduleTitleState();
}

class _ScheduleTitleState extends ConsumerState<ScheduleTitle> {
  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
        final selectedDate = ref.watch(providerOfScheduleSelectedDate);
        return Row(
          children: [
            Expanded(
              child: Text(
                selectedDate.formattedDate,
                style: GoogleFonts.fraunces(
                  fontSize: 20.spMin,
                  fontWeight: FontWeight.w700,
                  color: AppColors.primaryText,
                ),
              ),
            ),

            _legend(
              color: AppColors.lightBg,
              label: 'OPEN',
              textColor: AppColors.primary,
            ),

            const SizedBox(width: 8),

            _legend(
              color: AppColors.pendingState,
              label: 'BOOKED',
              textColor: AppColors.primaryCTA,
            ),
          ],
        );
      },
    );
  }

  Widget _legend({
    required Color color,
    required String label,
    required Color textColor,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.spMin, vertical: 4.spMin),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20.spMin),
      ),
      child: Text(
        label,
        style: GoogleFonts.ibmPlexMono(
          fontSize: 8.spMin,
          fontWeight: FontWeight.w700,
          letterSpacing: .5,
          color: textColor,
        ),
      ),
    );
  }
}
