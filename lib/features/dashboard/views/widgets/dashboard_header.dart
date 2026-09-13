import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:physio_ghar_demo/features/shared/extensions/number_extension.dart';
import 'package:physio_ghar_demo/features/shared/providers/user_provider.dart';
import 'package:physio_ghar_demo/features/shared/utils/app_colors.dart';

class DashboardHeader extends ConsumerStatefulWidget {
  const DashboardHeader({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _DashboardHeaderState();
}

class _DashboardHeaderState extends ConsumerState<DashboardHeader> {
  // Formats date in form of 'Saturday, September 12, 2026'
  final formattedDate = DateFormat('EEEE, MMMM d, yyyy').format(DateTime.now());

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
        final user = ref.watch(providerOfLoggedInUser);
        final name = user.name!.split(" ");
        return Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    getGreeting(),
                    style: GoogleFonts.ibmPlexMono(
                      fontSize: 11,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 1.3,
                      color: AppColors.mutedText,
                    ),
                  ),

                  5.hSizedBox,
                  Text(
                    '${name[0]} ${name[1]} 👋',
                    style: GoogleFonts.fraunces(
                      fontSize: 28,
                      fontWeight: FontWeight.w600,
                      color: AppColors.primaryText,
                      height: 1.1,
                    ),
                  ),

                  7.hSizedBox,

                  Text(
                    formattedDate,
                    style: GoogleFonts.inter(
                      fontSize: 13,
                      color: AppColors.secondaryText,
                    ),
                  ),
                ],
              ),
            ),

            // Profile
            Container(
              width: 52,
              height: 52,
              decoration: BoxDecoration(
                color: AppColors.lightBg,
                shape: BoxShape.circle,
                border: Border.all(color: Colors.white, width: 3),
              ),
              child: Center(
                child: Text(
                  name[1][0],
                  style: GoogleFonts.fraunces(
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                    color: AppColors.primary,
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  // returns greeting according to time
  String getGreeting() {
    final hour = DateTime.now().hour;

    if (hour < 12) {
      return 'Good Morning';
    } else if (hour < 17) {
      return 'Good Afternoon';
    } else {
      return 'Good Evening';
    }
  }
}
