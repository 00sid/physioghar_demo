import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:physio_ghar_demo/features/account/providers/account/selected_language_provider.dart';
import 'package:physio_ghar_demo/features/shared/extensions/number_extension.dart';
import 'package:physio_ghar_demo/features/shared/utils/app_colors.dart';

class AccountHeader extends ConsumerStatefulWidget {
  const AccountHeader({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _AccountHeaderState();
}

class _AccountHeaderState extends ConsumerState<AccountHeader> {
  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
        final lang = ref.watch(
          providerOfSelectedLanguage.select((val) => val.language),
        );
        final accountEyebrow = lang.title == 'English'
            ? 'SETTINGS'
            : 'सेटिङहरू';
        final accountTitle = lang.title == 'English' ? 'Account' : 'खाता';
        return Row(
          children: [
            // Title
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    accountEyebrow,
                    style: GoogleFonts.ibmPlexMono(
                      fontSize: 10.spMin,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1.5,
                      color: AppColors.primary,
                    ),
                  ),

                  4.hSizedBox,

                  Text(
                    accountTitle,
                    style: GoogleFonts.fraunces(
                      fontSize: 29.spMin,
                      fontWeight: FontWeight.w700,
                      color: AppColors.primaryText,
                    ),
                  ),

                  4.hSizedBox,

                  Text(
                    lang.title == 'English'
                        ? 'Manage your therapist profile'
                        : 'आफ्नो थेरापिस्ट प्रोफाइल व्यवस्थापन गर्नुहोस्',
                    style: GoogleFonts.inter(
                      fontSize: 12.spMin,
                      color: AppColors.secondaryText,
                    ),
                  ),
                ],
              ),
            ),

            // Setting button
            Container(
              width: 44.spMin,
              height: 44.spMin,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(14.spMin),
              ),
              child: const Icon(
                Icons.settings_outlined,
                color: AppColors.primary,
              ),
            ),
          ],
        );
      },
    );
  }
}
