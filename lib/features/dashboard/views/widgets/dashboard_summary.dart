import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:physio_ghar_demo/features/dashboard/views/widgets/summary_card.dart';
import 'package:physio_ghar_demo/features/shared/extensions/number_extension.dart';
import 'package:physio_ghar_demo/features/shared/utils/app_colors.dart';

class DashboardSummary extends ConsumerStatefulWidget {
  const DashboardSummary({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _DashboardSummaryState();
}

class _DashboardSummaryState extends ConsumerState<DashboardSummary> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: .start,
      children: [
        Text(
          "TODAY'S OVERVIEW",
          style: GoogleFonts.ibmPlexMono(
            fontSize: 11.spMin,
            fontWeight: FontWeight.w500,
            letterSpacing: 1.2,
            color: AppColors.mutedText,
          ),
        ),

        12.hSizedBox,

        Row(
          children: [
            Expanded(
              child: SummaryCard(
                value: '2',
                title: "Today's",
                subtitle: 'Sessions',
                icon: Icons.calendar_today_outlined,
              ),
            ),

            10.wSizedBox,

            Expanded(
              child: SummaryCard(
                value: '3',
                title: 'Upcoming',
                subtitle: 'Requests',
                icon: Icons.inbox_outlined,
              ),
            ),

            10.wSizedBox,

            Expanded(
              child: SummaryCard(
                value: '12',
                title: 'Completed',
                subtitle: 'Sessions',
                icon: Icons.task_alt_outlined,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
