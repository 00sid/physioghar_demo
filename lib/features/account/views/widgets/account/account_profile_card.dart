import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:physio_ghar_demo/features/account/providers/account/selected_language_provider.dart';
import 'package:physio_ghar_demo/features/account/views/widgets/account/edit_profile_bottom_sheet.dart';
import 'package:physio_ghar_demo/features/shared/extensions/number_extension.dart';
import 'package:physio_ghar_demo/features/shared/extensions/widget_extension.dart';
import 'package:physio_ghar_demo/features/shared/model/user/user_model.dart';
import 'package:physio_ghar_demo/features/shared/providers/user_provider.dart';
import 'package:physio_ghar_demo/features/shared/utils/app_colors.dart';

class AccountProfileCard extends ConsumerStatefulWidget {
  const AccountProfileCard({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _AccountProfileCardState();
}

class _AccountProfileCardState extends ConsumerState<AccountProfileCard> {
  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
        final user = ref.watch(providerOfLoggedInUser);
        final lang = ref.watch(
          providerOfSelectedLanguage.select((val) => val.language),
        );

        return Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16.spMin),
            border: Border.all(color: AppColors.neutralBg),
          ),
          child: Column(
            children: [
              _buildUpperSection(user: user, selectedLanguage: lang.title),

              22.hSizedBox,

              _buildLowerSection(user: user, selectedLanguage: lang.title),

              // divider
              Container(
                width: double.infinity,
                height: 1,
                color: AppColors.neutralBg,
              ),
            ],
          ).pad(20),
        );
      },
    );
  }

  Widget _buildUpperSection({
    required UserModel user,
    required String selectedLanguage,
  }) {
    return Row(
      children: [
        // Avatar
        Stack(
          children: [
            Container(
              width: 72.spMin,
              height: 72.spMin,
              decoration: BoxDecoration(
                color: AppColors.lightBg,
                borderRadius: BorderRadius.circular(22.spMin),
              ),
              alignment: Alignment.center,
              child: Text(
                _initials(user.name!),
                style: GoogleFonts.fraunces(
                  fontSize: 23.spMin,
                  fontWeight: FontWeight.w700,
                  color: AppColors.primary,
                ),
              ),
            ),

            // Camera button
            Positioned(
              right: -2.spMin,
              bottom: -2.spMin,
              child: Container(
                width: 24.spMin,
                height: 24.spMin,
                decoration: BoxDecoration(
                  color: AppColors.primary,
                  borderRadius: BorderRadius.circular(8.spMin),
                  border: Border.all(color: Colors.white, width: 2.spMin),
                ),
                child: Icon(
                  Icons.camera_alt_outlined,
                  size: 12.spMin,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),

        14.wSizedBox,

        // Name + specialization
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                user.name!,
                style: GoogleFonts.fraunces(
                  fontSize: 22.spMin,
                  fontWeight: FontWeight.w700,
                  color: AppColors.primaryText,
                ),
              ),

              4.hSizedBox,

              Text(
                user.specialization ?? "",
                style: GoogleFonts.inter(
                  fontSize: 12.spMin,
                  color: AppColors.secondaryText,
                ),
              ),

              8.hSizedBox,

              _availabilityPill(
                isAvailable: user.isAvailable,
                selectedLanguage: selectedLanguage,
              ),
            ],
          ),
        ),
      ],
    );
  }

  String _initials(String name) {
    final parts = name.split(' ');

    if (parts.length >= 2) {
      return '${parts[1][0]}${parts[2][0]}'.toUpperCase();
    }

    return name.substring(0, 1).toUpperCase();
  }

  // Available and Unavailable indicator
  Widget _availabilityPill({
    required bool isAvailable,
    required String selectedLanguage,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 9.spMin, vertical: 5.spMin),
      decoration: BoxDecoration(
        color: isAvailable ? AppColors.lightBg : AppColors.neutralBg,
        borderRadius: BorderRadius.circular(30.spMin),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 6.spMin,
            height: 6.spMin,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: isAvailable ? AppColors.primary : AppColors.mutedText,
            ),
          ),

          6.wSizedBox,

          Text(
            isAvailable
                ? selectedLanguage == 'English'
                      ? 'AVAILABLE'
                      : 'उपलब्ध'
                : selectedLanguage == 'English'
                ? 'UNAVAILABLE'
                : 'अनुपलब्ध',
            style: GoogleFonts.ibmPlexMono(
              fontSize: 8.spMin,
              fontWeight: FontWeight.w700,
              letterSpacing: .7,
              color: isAvailable ? AppColors.primary : AppColors.mutedText,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildLowerSection({
    required UserModel user,
    required String selectedLanguage,
  }) {
    final editProfileLabel = selectedLanguage == 'English'
        ? 'Edit Profile'
        : 'प्रोफाइल सम्पादन';

    return Column(
      children: [
        _profileInfoRow(Icons.email_outlined, user.email ?? ""),

        12.hSizedBox,

        _profileInfoRow(Icons.phone_outlined, user.phone ?? ""),
        12.hSizedBox,

        _profileInfoRow(Icons.location_on_outlined, user.address ?? ""),

        12.hSizedBox,

        // Edit Button
        SizedBox(
          width: double.infinity,
          height: 46.spMin,
          child: OutlinedButton.icon(
            onPressed: () {
              showBottomSheet(user: user, selectedLanguage: selectedLanguage);
            },
            icon: Icon(Icons.edit_outlined, size: 17.spMin),
            label: Text(
              editProfileLabel,
              style: GoogleFonts.inter(
                fontSize: 12.spMin,
                fontWeight: FontWeight.w600,
              ),
            ),
            style: OutlinedButton.styleFrom(
              foregroundColor: AppColors.primary,
              side: const BorderSide(color: AppColors.primary),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _profileInfoRow(IconData icon, String text) {
    return Row(
      children: [
        Icon(icon, size: 17.spMin, color: AppColors.mutedText),

        10.wSizedBox,

        Expanded(
          child: Text(
            text,
            overflow: TextOverflow.ellipsis,
            style: GoogleFonts.inter(
              fontSize: 12.spMin,
              color: AppColors.secondaryText,
            ),
          ),
        ),
      ],
    );
  }

  void showBottomSheet({
    required UserModel user,
    required String selectedLanguage,
  }) {
    showModalBottomSheet(
      context: context,
      backgroundColor: AppColors.mainBg,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(28)),
      ),
      builder: (context) {
        return EditProfileBottomSheet(
          user: user,
          selectedLanguage: selectedLanguage,
        );
      },
    );
  }
}
