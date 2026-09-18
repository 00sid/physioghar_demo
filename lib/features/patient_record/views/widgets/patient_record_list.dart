import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:physio_ghar_demo/features/patient_record/views/widgets/patient_record_card.dart';
import 'package:physio_ghar_demo/features/shared/extensions/number_extension.dart';
import 'package:physio_ghar_demo/features/shared/utils/app_colors.dart';
import 'package:physio_ghar_demo/features/shared/utils/dummy_data.dart';

class PatientRecordList extends ConsumerStatefulWidget {
  const PatientRecordList({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _PatientRecordListState();
}

class _PatientRecordListState extends ConsumerState<PatientRecordList> {
  @override
  Widget build(BuildContext context) {
    return kDummyPatientList.isEmpty
        ? _buildEmptyState()
        : Column(
            children: [
              ...kDummyPatientList.map(
                (patient) => PatientRecordCard(patient: patient),
              ),
              50.hSizedBox,
            ],
          );
  }

  Widget _buildEmptyState() {
    return Center(
      child: Padding(
        padding: EdgeInsets.all(35.spMin),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 75.spMin,
              height: 75.spMin,
              decoration: BoxDecoration(
                color: AppColors.lightBg,
                borderRadius: BorderRadius.circular(24.spMin),
              ),
              child: Icon(
                Icons.person_search_outlined,
                size: 34.spMin,
                color: AppColors.primary,
              ),
            ),

            20.hSizedBox,

            Text(
              'No patients found',
              style: GoogleFonts.fraunces(
                fontSize: 22.spMin,
                fontWeight: FontWeight.w700,
                color: AppColors.primaryText,
              ),
            ),

            8.hSizedBox,

            Text(
              'Try searching with a different name or condition.',
              textAlign: TextAlign.center,
              style: GoogleFonts.inter(
                fontSize: 12.spMin,
                color: AppColors.secondaryText,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
