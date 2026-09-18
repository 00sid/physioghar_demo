import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:physio_ghar_demo/features/dashboard/views/widgets/empty_state.dart';
import 'package:physio_ghar_demo/features/dashboard/views/widgets/upcoming_card.dart';
import 'package:physio_ghar_demo/features/schedule_and_session_mgmt/provider/session/upcoming_list_provider.dart';
import 'package:physio_ghar_demo/features/shared/extensions/number_extension.dart';
import 'package:physio_ghar_demo/features/shared/extensions/widget_extension.dart';
import 'package:physio_ghar_demo/features/shared/utils/app_colors.dart';
import 'package:physio_ghar_demo/features/shared/utils/dummy_data.dart';

class DashboardUpcoming extends ConsumerStatefulWidget {
  const DashboardUpcoming({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _DashboardUpcomingState();
}

class _DashboardUpcomingState extends ConsumerState<DashboardUpcoming> {
  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
        final upcomingList = ref.watch(providerOfUpcomingList);
        return Column(
          children: [
            // header
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Upcoming Sessions',
                  style: GoogleFonts.fraunces(
                    fontSize: 21.spMin,
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
                    'View all',
                    style: GoogleFonts.inter(
                      fontSize: 12.spMin,
                      fontWeight: FontWeight.w600,
                      color: AppColors.primary,
                    ),
                  ),
                ),
              ],
            ),

            8.hSizedBox,

            // Lists
            if (upcomingList.isEmpty)
              EmptyState(isUpcoming: true)
            else
              ...upcomingList.map(
                (session) => UpcomingCard(upcoming: session).pB(10.spMin),
              ),
          ],
        );
      },
    );
  }
}
