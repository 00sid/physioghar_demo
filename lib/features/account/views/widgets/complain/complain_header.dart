import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:physio_ghar_demo/features/shared/extensions/context_navigation_extension.dart';
import 'package:physio_ghar_demo/features/shared/extensions/number_extension.dart';
import 'package:physio_ghar_demo/features/shared/extensions/widget_extension.dart';
import 'package:physio_ghar_demo/features/shared/utils/app_colors.dart';

class ComplainHeader extends ConsumerStatefulWidget {
  const ComplainHeader({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ComplainHeaderState();
}

class _ComplainHeaderState extends ConsumerState<ComplainHeader> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 44.spMin,
          height: 44.spMin,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(14.spMin),
          ),
          child: const Icon(
            Icons.arrow_back_rounded,
            color: AppColors.primaryText,
          ),
        ).onPressed(() {
          context.popPage();
        }),

        12.wSizedBox,
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'SUPPORT',
                style: GoogleFonts.ibmPlexMono(
                  fontSize: 10.spMin,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 1.5,
                  color: AppColors.primary,
                ),
              ),

              4.hSizedBox,

              Text(
                'Report an Issue',
                style: GoogleFonts.fraunces(
                  fontSize: 28.spMin,
                  fontWeight: FontWeight.w700,
                  color: AppColors.primaryText,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
