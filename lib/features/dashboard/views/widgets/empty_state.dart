import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:physio_ghar_demo/features/shared/extensions/number_extension.dart';
import 'package:physio_ghar_demo/features/shared/extensions/widget_extension.dart';
import 'package:physio_ghar_demo/features/shared/utils/app_colors.dart';

class EmptyState extends ConsumerStatefulWidget {
  final bool isUpcoming;
  const EmptyState({super.key, this.isUpcoming = false});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _EmptyStateState();
}

class _EmptyStateState extends ConsumerState<EmptyState> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16.spMin),
        border: Border.all(color: AppColors.neutralBg),
      ),
      child: Column(
        children: [
          Container(
            width: 52.spMin,
            height: 52.spMin,
            decoration: BoxDecoration(
              color: AppColors.neutralBg,
              shape: BoxShape.circle,
            ),
            child: Icon(
              Icons.event_available_outlined,
              color: AppColors.primary,
              size: 25.spMin,
            ),
          ),

          13.hSizedBox,

          Text(
            widget.isUpcoming ? 'No upcoming sessions' : 'No sessions today',
            style: GoogleFonts.fraunces(
              fontSize: 19.spMin,
              fontWeight: FontWeight.w600,
              color: AppColors.primaryText,
            ),
          ),

          5.hSizedBox,

          !widget.isUpcoming
              ? Text(
                  'Your schedule is clear for now.',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.inter(
                    fontSize: 12.spMin,
                    color: AppColors.secondaryText,
                  ),
                )
              : SizedBox(),
        ],
      ).pXY(20, 32),
    );
  }
}
