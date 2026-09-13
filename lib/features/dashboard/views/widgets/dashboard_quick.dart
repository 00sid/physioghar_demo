import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:physio_ghar_demo/features/shared/extensions/number_extension.dart';
import 'package:physio_ghar_demo/features/shared/extensions/widget_extension.dart';
import 'package:physio_ghar_demo/features/shared/utils/app_colors.dart';

class DashboardQuick extends ConsumerStatefulWidget {
  const DashboardQuick({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _DashboardQuickState();
}

class _DashboardQuickState extends ConsumerState<DashboardQuick> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.primary,
        borderRadius: BorderRadius.circular(18),
      ),
      child: Row(
        children: [
          Container(
            width: 42,
            height: 42,
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.12),
              borderRadius: BorderRadius.circular(12),
            ),
            child: const Icon(
              Icons.add_task_outlined,
              color: Colors.white,
              size: 22,
            ),
          ),

          13.wSizedBox,

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'SESSION REQUESTS',
                  style: GoogleFonts.ibmPlexMono(
                    fontSize: 9.5,
                    letterSpacing: 1,
                    color: Colors.white70,
                  ),
                ),

                4.hSizedBox,

                Text(
                  '3 requests need your attention',
                  style: GoogleFonts.inter(
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),

          const Icon(
            Icons.arrow_forward_ios_rounded,
            color: Colors.white70,
            size: 16,
          ),
        ],
      ).pad(18),
    );
  }
}
