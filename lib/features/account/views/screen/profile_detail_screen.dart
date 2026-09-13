import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:physio_ghar_demo/features/shared/extensions/number_extension.dart';
import 'package:physio_ghar_demo/features/shared/extensions/widget_extension.dart';
import 'package:physio_ghar_demo/features/shared/model/user/user_model.dart';
import 'package:physio_ghar_demo/features/shared/utils/app_colors.dart';

class ProfileDetailsScreen extends StatelessWidget {
  final UserModel user;

  const ProfileDetailsScreen({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            // Header
            Row(
              children: [
                GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: Container(
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
                  ),
                ),

                12.wSizedBox,

                Text(
                  'My Profile',
                  style: GoogleFonts.fraunces(
                    fontSize: 25.spMin,
                    fontWeight: FontWeight.w700,
                    color: AppColors.primaryText,
                  ),
                ),
              ],
            ),

            24.hSizedBox,

            // Avatar + name
            _buildInfo(),

            24.hSizedBox,

            // Contact information
            _buildContactInfo(),

            16.hSizedBox,

            // Professional information
            _buildProfessionalInfo(),
          ],
        ).pXY(20, 16),
      ),
    );
  }

  Widget _buildInfo() {
    return Center(
      child: Column(
        children: [
          Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              color: AppColors.lightBg,
              borderRadius: BorderRadius.circular(30),
            ),
            alignment: Alignment.center,
            child: Text(
              _initials(user.name ?? ''),
              style: GoogleFonts.fraunces(
                fontSize: 32,
                fontWeight: FontWeight.w700,
                color: AppColors.primary,
              ),
            ),
          ),

          const SizedBox(height: 13),

          Text(
            user.name ?? "",
            style: GoogleFonts.fraunces(
              fontSize: 25,
              fontWeight: FontWeight.w700,
              color: AppColors.primaryText,
            ),
          ),

          const SizedBox(height: 5),

          Text(
            user.specialization ?? "",
            style: GoogleFonts.inter(
              fontSize: 12,
              color: AppColors.secondaryText,
            ),
          ),

          const SizedBox(height: 10),

          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
            decoration: BoxDecoration(
              color: user.isAvailable ? AppColors.lightBg : AppColors.neutralBg,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Text(
              user.isAvailable ? 'AVAILABLE' : 'UNAVAILABLE',
              style: GoogleFonts.ibmPlexMono(
                fontSize: 8,
                fontWeight: FontWeight.w700,
                letterSpacing: .8,
                color: user.isAvailable
                    ? AppColors.primary
                    : AppColors.mutedText,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildContactInfo() {
    return _detailCard('CONTACT INFORMATION', [
      _detailRow(Icons.email_outlined, 'Email', user.email ?? ""),
      _detailRow(Icons.phone_outlined, 'Phone', user.phone ?? ""),
      _detailRow(Icons.location_on_outlined, 'Address', user.address ?? ""),
    ]);
  }

  Widget _buildProfessionalInfo() {
    return _detailCard('PROFESSIONAL INFORMATION', [
      _detailRow(Icons.work_outline, 'Experience', user.experience ?? ""),
      _detailRow(
        Icons.medical_services_outlined,
        'Specialization',
        user.specialization ?? "",
      ),
    ]);
  }

  Widget _detailCard(String title, List<Widget> children) {
    return Container(
      padding: const EdgeInsets.all(17),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: GoogleFonts.ibmPlexMono(
              fontSize: 9,
              fontWeight: FontWeight.w700,
              letterSpacing: 1,
              color: AppColors.primary,
            ),
          ),

          const SizedBox(height: 15),

          ...children,
        ],
      ),
    );
  }

  Widget _detailRow(IconData icon, String label, String value) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 38.spMin,
          height: 38.spMin,
          decoration: BoxDecoration(
            color: AppColors.neutralBg,
            borderRadius: BorderRadius.circular(11),
          ),
          child: Icon(icon, size: 17.spMin, color: AppColors.primary),
        ),

        12.wSizedBox,

        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                label,
                style: GoogleFonts.ibmPlexMono(
                  fontSize: 8.spMin,
                  letterSpacing: .7,
                  color: AppColors.mutedText,
                ),
              ),

              4.hSizedBox,

              Text(
                value,
                style: GoogleFonts.inter(
                  fontSize: 12.spMin,
                  fontWeight: FontWeight.w600,
                  color: AppColors.primaryText,
                ),
              ),
            ],
          ),
        ),
      ],
    ).pB(16);
  }

  String _initials(String name) {
    final parts = name.split(' ');

    if (parts.length >= 2) {
      return '${parts[1][0]}${parts[2][0]}'.toUpperCase();
    }

    return name.substring(0, 1).toUpperCase();
  }
}
