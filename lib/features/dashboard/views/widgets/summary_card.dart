import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:physio_ghar_demo/features/shared/extensions/number_extension.dart';
import 'package:physio_ghar_demo/features/shared/extensions/widget_extension.dart';
import 'package:physio_ghar_demo/features/shared/utils/app_colors.dart';

class SummaryCard extends ConsumerStatefulWidget {
  final String value, title, subtitle;
  final IconData icon;
  const SummaryCard({
    super.key,
    required this.value,
    required this.title,
    required this.subtitle,
    required this.icon,
  });

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SummaryCardState();
}

class _SummaryCardState extends ConsumerState<SummaryCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 145.spMin,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16.spMin),
        border: Border.all(color: AppColors.neutralBg),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 32,
            height: 32,
            decoration: BoxDecoration(
              color: AppColors.neutralBg,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Icon(widget.icon, size: 17, color: AppColors.primary),
          ),

          const Spacer(),

          Text(
            widget.value,
            style: GoogleFonts.fraunces(
              fontSize: 28,
              fontWeight: FontWeight.w600,
              color: AppColors.primaryText,
              height: 1,
            ),
          ),

          7.hSizedBox,

          Text(
            widget.title,
            style: GoogleFonts.inter(fontSize: 10, color: AppColors.mutedText),
          ),

          Text(
            widget.subtitle,
            style: GoogleFonts.inter(
              fontSize: 10,
              fontWeight: FontWeight.w600,
              color: AppColors.secondaryText,
            ),
          ),
        ],
      ).pad(13),
    );
  }
}
