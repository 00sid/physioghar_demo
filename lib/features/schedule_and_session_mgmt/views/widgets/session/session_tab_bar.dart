import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:physio_ghar_demo/features/schedule_and_session_mgmt/enum/session_tab_bar_enum.dart';
import 'package:physio_ghar_demo/features/schedule_and_session_mgmt/provider/session/request_list_provider.dart';
import 'package:physio_ghar_demo/features/schedule_and_session_mgmt/provider/session/session_tab_provider.dart';
import 'package:physio_ghar_demo/features/shared/utils/app_colors.dart';

class SessionTabBar extends ConsumerStatefulWidget {
  final TabController controller;
  const SessionTabBar({super.key, required this.controller});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SessionTabBarState();
}

class _SessionTabBarState extends ConsumerState<SessionTabBar> {
  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
        final requestList = ref.watch(providerOfRequestList);
        return TabBar(
          controller: widget.controller,
          isScrollable: true,
          tabAlignment: TabAlignment.start,
          indicatorColor: AppColors.primary,
          indicatorSize: TabBarIndicatorSize.label,
          dividerColor: Colors.transparent,
          labelColor: AppColors.primary,
          unselectedLabelColor: AppColors.mutedText,
          labelStyle: GoogleFonts.inter(
            fontSize: 12,
            fontWeight: FontWeight.w700,
          ),
          unselectedLabelStyle: GoogleFonts.inter(
            fontSize: 12.spMin,
            fontWeight: FontWeight.w500,
          ),
          onTap: (value) {
            ref
                .read(providerOfSessionTab.notifier)
                .updateTab(tab: SessionTabBarEnum.values[value]);
          },
          tabs: [
            Tab(
              child: Row(
                children: [
                  const Text('Requests'),
                  if (requestList.isNotEmpty) ...[
                    const SizedBox(width: 5),
                    _countBadge(requestList.length),
                  ],
                ],
              ),
            ),
            const Tab(text: 'Upcoming'),
            const Tab(text: 'Completed'),
            const Tab(text: 'Cancelled'),
          ],
        );
      },
    );
  }

  Widget _countBadge(int count) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 4.spMin, vertical: 2.spMin),
      decoration: BoxDecoration(
        color: AppColors.primaryCTA,
        borderRadius: BorderRadius.circular(10.spMin),
      ),
      child: Text(
        '$count',
        style: GoogleFonts.inter(
          fontSize: 8.spMin,
          fontWeight: FontWeight.w700,
          color: Colors.white,
        ),
      ),
    );
  }
}
