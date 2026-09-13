import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:physio_ghar_demo/features/account/enum/language_enum.dart';
import 'package:physio_ghar_demo/features/account/providers/account/selected_language_provider.dart';
import 'package:physio_ghar_demo/features/account/providers/account/state/language_state.dart';
import 'package:physio_ghar_demo/features/shared/extensions/number_extension.dart';
import 'package:physio_ghar_demo/features/shared/extensions/widget_extension.dart';
import 'package:physio_ghar_demo/features/shared/utils/app_colors.dart';

class AccountLanguage extends ConsumerStatefulWidget {
  const AccountLanguage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _AccountLanguageState();
}

class _AccountLanguageState extends ConsumerState<AccountLanguage> {
  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
        final selectedLanguage = ref.watch(providerOfSelectedLanguage);
        final languageLabel = selectedLanguage.language.title == 'English'
            ? 'English'
            : 'भाषा';
        return Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16.spMin),
            border: Border.all(color: AppColors.neutralBg),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    width: 40.spMin,
                    height: 40.spMin,
                    decoration: BoxDecoration(
                      color: AppColors.lightBg,
                      borderRadius: BorderRadius.circular(12.spMin),
                    ),
                    child: const Icon(
                      Icons.language_rounded,
                      size: 19,
                      color: AppColors.primary,
                    ),
                  ),

                  12.wSizedBox,

                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          languageLabel,
                          style: GoogleFonts.inter(
                            fontSize: 14.spMin,
                            fontWeight: FontWeight.w700,
                            color: AppColors.primaryText,
                          ),
                        ),

                        4.hSizedBox,

                        Text(
                          selectedLanguage.language.title == 'English'
                              ? 'Choose your preferred language'
                              : 'आफ्नो मनपर्ने भाषा छान्नुहोस्',
                          style: GoogleFonts.inter(
                            fontSize: 12.spMin,
                            color: AppColors.secondaryText,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              16.hSizedBox,

              Row(
                children: [
                  Expanded(
                    child: _languageButton(
                      'English',
                      'EN',
                      selectedLanguage.language,
                    ),
                  ),

                  10.wSizedBox,

                  Expanded(
                    child: _languageButton(
                      'Nepali',
                      'ने',
                      selectedLanguage.language,
                    ),
                  ),
                ],
              ),
            ],
          ).pad(16),
        );
      },
    );
  }

  Widget _languageButton(
    String language,
    String shortLabel,
    LanguageEnum selectedLanguage,
  ) {
    final selected = selectedLanguage.title == language;

    return GestureDetector(
      onTap: () {
        if (language == "English") {
          ref.read(providerOfSelectedLanguage.notifier).state = LanguageState(
            language: LanguageEnum.english,
          );
        } else {
          ref.read(providerOfSelectedLanguage.notifier).state = LanguageState(
            language: LanguageEnum.nepali,
          );
        }
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        height: 52.spMin,
        decoration: BoxDecoration(
          color: selected ? AppColors.primary : AppColors.neutralBg,
          borderRadius: BorderRadius.circular(14.spMin),
          border: Border.all(
            color: selected ? AppColors.primary : Colors.transparent,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 26.spMin,
              height: 26.spMin,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: selected ? Colors.white.withOpacity(.15) : Colors.white,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(
                shortLabel,
                style: GoogleFonts.inter(
                  fontSize: 10.spMin,
                  fontWeight: FontWeight.w700,
                  color: selected ? Colors.white : AppColors.primary,
                ),
              ),
            ),

            8.wSizedBox,

            Text(
              language,
              style: GoogleFonts.inter(
                fontSize: 12.spMin,
                fontWeight: FontWeight.w600,
                color: selected ? Colors.white : AppColors.secondaryText,
              ),
            ),

            if (selected) ...[
              8.wSizedBox,

              Icon(
                Icons.check_circle_rounded,
                size: 16.spMin,
                color: Colors.white,
              ),
            ],
          ],
        ),
      ),
    );
  }
}
