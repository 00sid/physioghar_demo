import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:physio_ghar_demo/features/account/providers/account/selected_language_provider.dart';
import 'package:physio_ghar_demo/features/shared/extensions/context_navigation_extension.dart';
import 'package:physio_ghar_demo/features/shared/extensions/number_extension.dart';
import 'package:physio_ghar_demo/features/shared/utils/app_colors.dart';

class AccountLogout extends ConsumerStatefulWidget {
  const AccountLogout({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _AccountLogoutState();
}

class _AccountLogoutState extends ConsumerState<AccountLogout> {
  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
        final lang = ref.watch(
          providerOfSelectedLanguage.select((val) => val.language),
        );
        final logoutLabel = lang.title == 'English' ? 'Logout' : 'लगआउट';
        return GestureDetector(
          onTap: () {
            _showLogoutDialog(selectedLanguage: lang.title);
          },
          child: Container(
            height: 50.spMin,
            decoration: BoxDecoration(
              color: AppColors.errorBg,
              borderRadius: BorderRadius.circular(16.spMin),
              border: Border.all(color: AppColors.error.withOpacity(.15)),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.logout_rounded,
                  size: 20.spMin,
                  color: AppColors.error,
                ),

                10.wSizedBox,

                Text(
                  logoutLabel,
                  style: GoogleFonts.inter(
                    fontSize: 12.spMin,
                    fontWeight: FontWeight.w600,
                    color: AppColors.error,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  void _showLogoutDialog({required String selectedLanguage}) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          backgroundColor: AppColors.mainBg,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.spMin),
          ),
          title: Text(
            selectedLanguage == 'English' ? 'Logout?' : 'लगआउट गर्ने?',
            style: GoogleFonts.fraunces(
              fontSize: 24.spMin,
              fontWeight: FontWeight.w700,
              color: AppColors.primaryText,
            ),
          ),
          content: Text(
            selectedLanguage == 'English'
                ? 'You will be returned to the login screen.'
                : 'तपाईं लगइन स्क्रिनमा फर्कनुहुनेछ।',
            style: GoogleFonts.inter(
              fontSize: 12.spMin,
              height: 1.5,
              color: AppColors.secondaryText,
            ),
          ),
          actions: [
            TextButton(
              onPressed: () => context.popPage(),
              child: Text(
                selectedLanguage == 'English' ? 'Cancel' : 'रद्द गर्नुहोस्',
                style: GoogleFonts.inter(color: AppColors.secondaryText),
              ),
            ),

            ElevatedButton(
              onPressed: () {
                context.popPage();

                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(
                      selectedLanguage == 'English'
                          ? 'Logout action triggered'
                          : 'लगआउट कार्य सुरु भयो',
                      style: GoogleFonts.inter(),
                    ),
                    backgroundColor: AppColors.primary,
                    behavior: SnackBarBehavior.floating,
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.error,
                foregroundColor: Colors.white,
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.spMin),
                ),
              ),
              child: Text(
                selectedLanguage == 'English' ? 'Logout' : 'लगआउट',
                style: GoogleFonts.inter(fontWeight: FontWeight.w600),
              ),
            ),
          ],
        );
      },
    );
  }
}
