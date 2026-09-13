import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:physio_ghar_demo/features/shared/extensions/context_extension.dart';
import 'package:physio_ghar_demo/features/shared/extensions/context_navigation_extension.dart';
import 'package:physio_ghar_demo/features/shared/extensions/number_extension.dart';
import 'package:physio_ghar_demo/features/shared/extensions/widget_extension.dart';
import 'package:physio_ghar_demo/features/shared/model/user/user_model.dart';
import 'package:physio_ghar_demo/features/shared/providers/user_provider.dart';
import 'package:physio_ghar_demo/features/shared/utils/app_colors.dart';

// Import your actual provider here
// import 'package:physio_ghar_demo/features/.../provider.dart';

class EditProfileBottomSheet extends ConsumerStatefulWidget {
  const EditProfileBottomSheet({
    super.key,
    required this.user,
    required this.selectedLanguage,
  });

  final UserModel user;
  final String selectedLanguage;

  @override
  ConsumerState<EditProfileBottomSheet> createState() =>
      _EditProfileBottomSheetState();
}

class _EditProfileBottomSheetState
    extends ConsumerState<EditProfileBottomSheet> {
  late final TextEditingController nameController;
  late final TextEditingController phoneController;
  late final TextEditingController emailController;
  late final TextEditingController experienceController;
  late final TextEditingController specializationController;
  late final TextEditingController addressController;

  bool get isEnglish => widget.selectedLanguage == 'English';

  @override
  void initState() {
    super.initState();

    nameController = TextEditingController(text: widget.user.name ?? '');

    phoneController = TextEditingController(text: widget.user.phone ?? '');

    emailController = TextEditingController(text: widget.user.email ?? '');

    experienceController = TextEditingController(
      text: widget.user.experience ?? '',
    );

    specializationController = TextEditingController(
      text: widget.user.specialization ?? '',
    );

    addressController = TextEditingController(text: widget.user.address ?? '');
  }

  @override
  void dispose() {
    nameController.dispose();
    phoneController.dispose();
    emailController.dispose();
    experienceController.dispose();
    specializationController.dispose();
    addressController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(
        20.spMin,
        14.spMin,
        20.spMin,
        MediaQuery.of(context).viewInsets.bottom + 25,
      ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _sheetHandle(),

            20.hSizedBox,

            // --------------------------------------------------
            // Title
            // --------------------------------------------------
            Text(
              isEnglish ? 'Edit Profile' : 'प्रोफाइल सम्पादन',
              style: GoogleFonts.fraunces(
                fontSize: 25.spMin,
                fontWeight: FontWeight.w700,
                color: AppColors.primaryText,
              ),
            ),

            4.hSizedBox,

            Text(
              isEnglish
                  ? 'Update your professional information'
                  : 'आफ्नो व्यावसायिक जानकारी अपडेट गर्नुहोस्',
              style: GoogleFonts.inter(
                fontSize: 12.spMin,
                color: AppColors.secondaryText,
              ),
            ),

            22.hSizedBox,

            // --------------------------------------------------
            // Name
            // --------------------------------------------------
            _profileField(
              label: isEnglish ? 'NAME' : 'नाम',
              controller: nameController,
              hint: isEnglish ? 'Your name' : 'तपाईंको नाम',
              icon: Icons.person_outline,
            ),

            // --------------------------------------------------
            // Phone
            // --------------------------------------------------
            _profileField(
              label: isEnglish ? 'PHONE' : 'फोन',
              controller: phoneController,
              hint: '+977 98XXXXXXXX',
              icon: Icons.phone_outlined,
              keyboardType: TextInputType.phone,
            ),

            // --------------------------------------------------
            // Email
            // --------------------------------------------------
            _profileField(
              label: isEnglish ? 'EMAIL' : 'इमेल',
              controller: emailController,
              hint: 'your@email.com',
              icon: Icons.email_outlined,
              keyboardType: TextInputType.emailAddress,
            ),

            // --------------------------------------------------
            // Experience
            // --------------------------------------------------
            _profileField(
              label: isEnglish ? 'EXPERIENCE' : 'अनुभव',
              controller: experienceController,
              hint: isEnglish ? 'e.g. 5 years' : 'जस्तै: ५ वर्ष',
              icon: Icons.work_outline,
            ),

            // --------------------------------------------------
            // Specialization
            // --------------------------------------------------
            _profileField(
              label: isEnglish ? 'SPECIALIZATION' : 'विशेषज्ञता',
              controller: specializationController,
              hint: isEnglish
                  ? 'e.g. Orthopedic Physiotherapy'
                  : 'जस्तै: Orthopedic Physiotherapy',
              icon: Icons.medical_services_outlined,
            ),

            // --------------------------------------------------
            // Address
            // --------------------------------------------------
            _profileField(
              label: isEnglish ? 'ADDRESS' : 'ठेगाना',
              controller: addressController,
              hint: isEnglish ? 'Your address' : 'तपाईंको ठेगाना',
              icon: Icons.location_on_outlined,
            ),

            10.hSizedBox,

            // --------------------------------------------------
            // Save Button
            // --------------------------------------------------
            SizedBox(
              width: double.infinity,
              height: 50.spMin,
              child: ElevatedButton(
                onPressed: () {
                  saveProfile();
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.primary,
                  foregroundColor: Colors.white,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.spMin),
                  ),
                ),
                child: Text(
                  isEnglish ? 'Save Changes' : 'परिवर्तनहरू सुरक्षित गर्नुहोस्',
                  style: GoogleFonts.inter(fontWeight: FontWeight.w600),
                ),
              ),
            ),
          ],
        ),
      ),
    ).onPressed(() {
      context.unfocusInputs();
    });
  }

  void saveProfile() {
    final updatedUser = widget.user.copyWith(
      name: nameController.text.trim(),
      phone: phoneController.text.trim(),
      email: emailController.text.trim(),
      experience: experienceController.text.trim(),
      specialization: specializationController.text.trim(),
      address: addressController.text.trim(),
    );

    ref
        .read(providerOfLoggedInUser.notifier)
        .editUserDetails(user: updatedUser);

    if (!mounted) return;

    context.popPage();

    // Show success message

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          isEnglish
              ? 'Profile updated successfully'
              : 'प्रोफाइल सफलतापूर्वक अपडेट भयो',
          style: GoogleFonts.inter(),
        ),
        backgroundColor: AppColors.primary,
        behavior: SnackBarBehavior.floating,
      ),
    );
  }

  // ============================================================
  // Reusable field
  // ============================================================

  Widget _profileField({
    required String label,
    required TextEditingController controller,
    required String hint,
    required IconData icon,
    TextInputType? keyboardType,
  }) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _fieldLabel(label),

          7.hSizedBox,

          _textField(
            controller: controller,
            hint: hint,
            icon: icon,
            keyboardType: keyboardType,
          ),
        ],
      ),
    );
  }

  // ============================================================
  // Field label
  // ============================================================

  Widget _fieldLabel(String text) {
    return Text(
      text,
      style: GoogleFonts.ibmPlexMono(
        fontSize: 9.spMin,
        fontWeight: FontWeight.w700,
        letterSpacing: 1,
        color: AppColors.mutedText,
      ),
    );
  }

  // ============================================================
  // Text field
  // ============================================================

  Widget _textField({
    required TextEditingController controller,
    required String hint,
    required IconData icon,
    TextInputType? keyboardType,
  }) {
    return TextField(
      controller: controller,
      keyboardType: keyboardType,
      style: GoogleFonts.inter(
        fontSize: 13.spMin,
        color: AppColors.primaryText,
      ),
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: GoogleFonts.inter(fontSize: 12, color: AppColors.mutedText),
        prefixIcon: Icon(icon, size: 18, color: AppColors.mutedText),
        filled: true,
        fillColor: Colors.white,
        contentPadding: EdgeInsets.symmetric(vertical: 15.spMin),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: BorderSide.none,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: BorderSide(color: AppColors.primary.withOpacity(.3)),
        ),
      ),
    );
  }

  // ============================================================
  // Bottom sheet handle
  // ============================================================

  Widget _sheetHandle() {
    return Center(
      child: Container(
        width: 40.spMin,
        height: 4.spMin,
        decoration: BoxDecoration(
          color: AppColors.mutedText.withOpacity(.3),
          borderRadius: BorderRadius.circular(10.spMin),
        ),
      ),
    );
  }
}
