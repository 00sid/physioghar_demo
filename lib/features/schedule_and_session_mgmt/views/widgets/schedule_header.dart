import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:physio_ghar_demo/features/schedule_and_session_mgmt/enum/schedule_tab_bar_enum.dart';
import 'package:physio_ghar_demo/features/schedule_and_session_mgmt/provider/session/request_list_provider.dart';
import 'package:physio_ghar_demo/features/schedule_and_session_mgmt/provider/schedule_tab_provider.dart';
import 'package:physio_ghar_demo/features/shared/extensions/number_extension.dart';
import 'package:physio_ghar_demo/features/shared/utils/app_colors.dart';

class ScheduleHeader extends ConsumerStatefulWidget {
  const ScheduleHeader({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ScheduleHeaderState();
}

class _ScheduleHeaderState extends ConsumerState<ScheduleHeader> {
  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
        final selectedTab = ref.watch(
          providerOfScheduleTab.select((val) => val.selectedTab),
        );
        final requestList = ref.watch(providerOfRequestList);
        return Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'THERAPIST SCHEDULE',
                    style: GoogleFonts.ibmPlexMono(
                      fontSize: 12.spMin,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1.4,
                      color: AppColors.secondary,
                    ),
                  ),

                  4.hSizedBox,

                  Text(
                    selectedTab == ScheduleTabBarEnum.schedule
                        ? 'Schedule'
                        : 'Sessions',
                    style: GoogleFonts.fraunces(
                      fontSize: 30.spMin,
                      fontWeight: FontWeight.w700,
                      color: AppColors.primaryText,
                    ),
                  ),

                  4.hSizedBox,

                  Text(
                    selectedTab == ScheduleTabBarEnum.schedule
                        ? 'Manage your availability and time slots'
                        : 'Manage bookings and appointments',
                    style: GoogleFonts.inter(
                      fontSize: 12.spMin,
                      color: AppColors.secondaryText,
                    ),
                  ),
                ],
              ),
            ),

            GestureDetector(
              onTap: () {
                // mainTabController.animateTo(1);
                // sessionTabController.animateTo(0);
              },
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    width: 46.spMin,
                    height: 46.spMin,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15.spMin),
                    ),
                    child: const Icon(
                      Icons.notifications_none_rounded,
                      color: AppColors.primary,
                    ),
                  ),

                  if (requestList.isNotEmpty)
                    Positioned(
                      top: -4.spMin,
                      right: -4.spMin,
                      child: Container(
                        width: 19.spMin,
                        height: 19.spMin,
                        alignment: Alignment.center,
                        decoration: const BoxDecoration(
                          color: AppColors.primaryCTA,
                          shape: BoxShape.circle,
                        ),
                        child: Text(
                          '${requestList.length}',
                          style: GoogleFonts.inter(
                            fontSize: 8.spMin,
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
