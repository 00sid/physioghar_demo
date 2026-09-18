import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:physio_ghar_demo/features/schedule_and_session_mgmt/enum/schedule_tab_bar_enum.dart';
import 'package:physio_ghar_demo/features/schedule_and_session_mgmt/provider/session/request_list_provider.dart';
import 'package:physio_ghar_demo/features/schedule_and_session_mgmt/provider/schedule_tab_provider.dart';
import 'package:physio_ghar_demo/features/shared/extensions/number_extension.dart';
import 'package:physio_ghar_demo/features/shared/utils/app_colors.dart';

class ScheduleTabBar extends ConsumerStatefulWidget {
  final TabController controller;
  const ScheduleTabBar({super.key, required this.controller});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ScheduleTabBarState();
}

class _ScheduleTabBarState extends ConsumerState<ScheduleTabBar> {
  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
        final requestList = ref.watch(providerOfRequestList);

        return Container(
          height: 48.spMin,
          padding: EdgeInsets.all(4.spMin),
          decoration: BoxDecoration(
            color: AppColors.neutralBg,
            borderRadius: BorderRadius.circular(16.spMin),
          ),
          child: TabBar(
            controller: widget.controller,
            onTap: (value) {
              ref
                  .read(providerOfScheduleTab.notifier)
                  .updateTab(tab: ScheduleTabBarEnum.values[value]);
            },
            indicator: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12.spMin),
            ),
            indicatorSize: TabBarIndicatorSize.tab,
            dividerColor: Colors.transparent,
            labelColor: AppColors.primary,
            unselectedLabelColor: AppColors.secondaryText,
            labelStyle: GoogleFonts.inter(
              fontSize: 12.spMin,
              fontWeight: FontWeight.w700,
            ),
            unselectedLabelStyle: GoogleFonts.inter(
              fontSize: 12.spMin,
              fontWeight: FontWeight.w500,
            ),
            tabs: [
              const Tab(text: 'Schedule'),
              Tab(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Sessions'),

                    if (requestList.isNotEmpty) ...[
                      6.wSizedBox,

                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 6.spMin,
                          vertical: 2.spMin,
                        ),
                        decoration: BoxDecoration(
                          color: AppColors.primaryCTA,
                          borderRadius: BorderRadius.circular(20.spMin),
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
                    ],
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
