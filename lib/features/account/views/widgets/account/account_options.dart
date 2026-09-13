import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:physio_ghar_demo/features/account/providers/account/selected_language_provider.dart';
import 'package:physio_ghar_demo/features/account/views/screen/complains_screen.dart';
import 'package:physio_ghar_demo/features/account/views/screen/profile_detail_screen.dart';
import 'package:physio_ghar_demo/features/shared/extensions/context_navigation_extension.dart';
import 'package:physio_ghar_demo/features/shared/extensions/number_extension.dart';
import 'package:physio_ghar_demo/features/shared/extensions/widget_extension.dart';
import 'package:physio_ghar_demo/features/shared/model/user/user_model.dart';
import 'package:physio_ghar_demo/features/shared/providers/user_provider.dart';
import 'package:physio_ghar_demo/features/shared/utils/app_colors.dart';

class AccountOptions extends ConsumerStatefulWidget {
  const AccountOptions({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _AccountOptionsState();
}

class _AccountOptionsState extends ConsumerState<AccountOptions> {
  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
        final user = ref.watch(providerOfLoggedInUser);
        final lang = ref.watch(
          providerOfSelectedLanguage.select((val) => val.language),
        );
        final availabilityLabel = lang.title == 'English'
            ? 'Availability'
            : 'उपलब्धता';
        final profileLabel = lang.title == 'English'
            ? 'My Profile'
            : 'मेरो प्रोफाइल';
        final complaintLabel = lang.title == 'English'
            ? 'Report an Issue'
            : 'समस्या रिपोर्ट गर्नुहोस्';
        final complaintSubtitle = lang.title == 'English'
            ? 'Report a problem to PhysioGhar admin'
            : 'PhysioGhar एडमिनलाई समस्या रिपोर्ट गर्नुहोस्';
        return Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(18.spMin),
            border: Border.all(color: AppColors.neutralBg),
          ),
          child: Column(
            children: [
              // My Profile
              _accountOption(
                icon: Icons.person_outline_rounded,
                title: profileLabel,
                subtitle: lang.title == 'English'
                    ? 'View your professional information'
                    : 'आफ्नो व्यावसायिक जानकारी हेर्नुहोस्',
                onTap: () {
                  _openProfileDetails(user: user);
                },
              ),

              _divider(),

              // Availability
              _accountOption(
                icon: Icons.circle_outlined,
                title: availabilityLabel,
                subtitle: user.isAvailable
                    ? lang.title == 'English'
                          ? 'You are currently available'
                          : 'तपाईं अहिले उपलब्ध हुनुहुन्छ'
                    : lang.title == 'English'
                    ? 'You are currently unavailable'
                    : 'तपाईं अहिले उपलब्ध हुनुहुन्न',
                trailing: Switch.adaptive(
                  value: user.isAvailable,
                  activeColor: AppColors.primary,
                  onChanged: (value) {
                    ref
                        .read(providerOfLoggedInUser.notifier)
                        .changeAvailability();
                  },
                ),
              ),

              _divider(),

              // Report an Issue / Complaints
              _accountOption(
                icon: Icons.report_problem_outlined,
                title: complaintLabel,
                subtitle: complaintSubtitle,
                onTap: _openComplaints,
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _accountOption({
    required IconData icon,
    required String title,
    required String subtitle,
    VoidCallback? onTap,
    Widget? trailing,
  }) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(16.spMin),
      child: Row(
        children: [
          Container(
            width: 42.spMin,
            height: 42.spMin,
            decoration: BoxDecoration(
              color: AppColors.neutralBg,
              borderRadius: BorderRadius.circular(12.spMin),
            ),
            child: Icon(icon, size: 20.spMin, color: AppColors.primary),
          ),

          12.wSizedBox,

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: GoogleFonts.inter(
                    fontSize: 12.spMin,
                    fontWeight: FontWeight.w600,
                    color: AppColors.primaryText,
                  ),
                ),

                4.hSizedBox,

                Text(
                  subtitle,
                  style: GoogleFonts.inter(
                    fontSize: 10.spMin,
                    color: AppColors.secondaryText,
                  ),
                ),
              ],
            ),
          ),

          trailing ??
              const Icon(
                Icons.chevron_right_rounded,
                color: AppColors.mutedText,
              ),
        ],
      ).pad(16),
    );
  }

  Widget _divider() {
    return Padding(
      padding: EdgeInsets.only(left: 69.spMin),
      child: Container(height: 1, color: AppColors.neutralBg),
    );
  }

  void _openProfileDetails({required UserModel user}) {
    context.pushPage(ProfileDetailsScreen(user: user));
  }

  void _openComplaints() {
    context.pushPage(ComplaintsScreen());
  }
}
