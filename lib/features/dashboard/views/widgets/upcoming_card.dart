import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:physio_ghar_demo/features/shared/extensions/number_extension.dart';
import 'package:physio_ghar_demo/features/shared/extensions/widget_extension.dart';
import 'package:physio_ghar_demo/features/shared/model/session/session_model.dart';
import 'package:physio_ghar_demo/features/shared/utils/app_colors.dart';

class UpcomingCard extends ConsumerStatefulWidget {
  final SessionModel upcoming;
  const UpcomingCard({super.key, required this.upcoming});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _UpcomingCardState();
}

class _UpcomingCardState extends ConsumerState<UpcomingCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16.spMin),
        border: Border.all(color: AppColors.neutralBg),
      ),
      child: Row(
        children: [
          // Date
          Container(
            width: 50.spMin,
            height: 58.spMin,
            decoration: BoxDecoration(
              color: AppColors.neutralBg,
              borderRadius: BorderRadius.circular(12.spMin),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  widget.upcoming.date!,
                  style: GoogleFonts.ibmPlexMono(
                    fontSize: 9.spMin,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 0.5,
                    color: AppColors.mutedText,
                  ),
                ),

                2.hSizedBox,

                Text(
                  widget.upcoming.day!,
                  style: GoogleFonts.fraunces(
                    fontSize: 21.spMin,
                    fontWeight: FontWeight.w600,
                    color: AppColors.primaryText,
                  ),
                ),
              ],
            ),
          ),

          13.wSizedBox,

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.upcoming.patient!,
                  style: GoogleFonts.inter(
                    fontSize: 13.spMin,
                    fontWeight: FontWeight.w700,
                    color: AppColors.primaryText,
                  ),
                ),

                4.hSizedBox,

                Text(
                  widget.upcoming.treatment!,
                  style: GoogleFonts.inter(
                    fontSize: 11.spMin,
                    color: AppColors.secondaryText,
                  ),
                ),

                5.hSizedBox,

                Row(
                  children: [
                    Text(
                      widget.upcoming.time!,
                      style: GoogleFonts.inter(
                        fontSize: 10.spMin,
                        fontWeight: FontWeight.w600,
                        color: AppColors.primary,
                      ),
                    ),

                    7.wSizedBox,

                    Container(
                      width: 3.spMin,
                      height: 3.spMin,
                      decoration: const BoxDecoration(
                        color: AppColors.mutedText,
                        shape: BoxShape.circle,
                      ),
                    ),

                    7.wSizedBox,

                    Text(
                      widget.upcoming.location!.title,
                      style: GoogleFonts.inter(
                        fontSize: 10.spMin,
                        color: AppColors.mutedText,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          const Icon(Icons.chevron_right_rounded, color: AppColors.mutedText),
        ],
      ).pad(14),
    );
  }
}
