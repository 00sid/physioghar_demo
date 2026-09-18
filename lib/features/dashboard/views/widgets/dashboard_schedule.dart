import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:physio_ghar_demo/features/dashboard/views/widgets/empty_state.dart';
import 'package:physio_ghar_demo/features/dashboard/views/widgets/dash_session_card.dart';
import 'package:physio_ghar_demo/features/schedule_and_session_mgmt/provider/session/completed_list_provider.dart';
import 'package:physio_ghar_demo/features/schedule_and_session_mgmt/provider/session/upcoming_list_provider.dart';
import 'package:physio_ghar_demo/features/shared/extensions/number_extension.dart';
import 'package:physio_ghar_demo/features/shared/extensions/widget_extension.dart';
import 'package:physio_ghar_demo/features/shared/utils/app_colors.dart';
import 'package:physio_ghar_demo/features/shared/utils/dummy_data.dart';

class DashboardSchedule extends ConsumerStatefulWidget {
  const DashboardSchedule({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _DashboardScheduleState();
}

class _DashboardScheduleState extends ConsumerState<DashboardSchedule> {
  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
        final upcomingSession = ref.watch(providerOfUpcomingList);
        final todaySession = upcomingSession
            .where((session) => session.sessionDate!.day == DateTime.now().day)
            .toList();
        return Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Today's Schedule",
                  style: GoogleFonts.fraunces(
                    fontSize: 21,
                    fontWeight: FontWeight.w600,
                    color: AppColors.primaryText,
                  ),
                ),

                TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    minimumSize: const Size(44, 44),
                    padding: EdgeInsets.symmetric(horizontal: 4.spMin),
                  ),
                  child: Text(
                    'See all',
                    style: GoogleFonts.inter(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: AppColors.primary,
                    ),
                  ),
                ),
              ],
            ),

            10.hSizedBox,
            if (todaySession.isEmpty)
              EmptyState()
            else
              ...todaySession.map(
                (session) => DashSessionCard(session: session).pB(10.spMin),
              ),
          ],
        );
      },
    );
  }
}
