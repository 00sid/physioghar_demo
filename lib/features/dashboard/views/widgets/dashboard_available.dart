import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:physio_ghar_demo/features/shared/extensions/number_extension.dart';
import 'package:physio_ghar_demo/features/shared/extensions/widget_extension.dart';
import 'package:physio_ghar_demo/features/shared/providers/user_provider.dart';
import 'package:physio_ghar_demo/features/shared/utils/app_colors.dart';

class DashboardAvailable extends ConsumerStatefulWidget {
  const DashboardAvailable({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _DashboardAvailableState();
}

class _DashboardAvailableState extends ConsumerState<DashboardAvailable> {
  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
        // getting the user/therapist status
        final isAvailable = ref.watch(
          providerOfLoggedInUser.select((val) => val.isAvailable),
        );
        return Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: isAvailable ? AppColors.lightBg : AppColors.errorBg,
            borderRadius: BorderRadius.circular(18.spMin),
          ),
          child: Row(
            children: [
              Container(
                width: 42.spMin,
                height: 42.spMin,
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.75),
                  borderRadius: BorderRadius.circular(13.spMin),
                ),
                child: Icon(
                  isAvailable
                      ? Icons.check_circle_outline
                      : Icons.remove_circle_outline,
                  color: isAvailable ? AppColors.primary : AppColors.error,
                  size: 23.spMin,
                ),
              ),

              13.wSizedBox,

              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'AVAILABILITY',
                      style: GoogleFonts.ibmPlexMono(
                        fontSize: 10,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 1.1,
                        color: isAvailable
                            ? AppColors.primary
                            : AppColors.error,
                      ),
                    ),

                    4.hSizedBox,

                    Text(
                      isAvailable ? 'Available' : 'Unavailable',
                      style: GoogleFonts.inter(
                        fontSize: 16.spMin,
                        fontWeight: FontWeight.w700,
                        color: AppColors.primaryText,
                      ),
                    ),

                    2.hSizedBox,

                    Text(
                      isAvailable
                          ? 'You are accepting new sessions'
                          : 'You are not accepting new sessions',
                      style: GoogleFonts.inter(
                        fontSize: 11.5.spMin,
                        color: AppColors.secondaryText,
                      ),
                    ),
                  ],
                ),
              ),

              Switch.adaptive(
                value: isAvailable,
                activeColor: AppColors.primary,
                onChanged: (value) {
                  ref
                      .read(providerOfLoggedInUser.notifier)
                      .changeAvailability();
                },
              ),
            ],
          ).pad(18),
        );
      },
    );
  }
}
