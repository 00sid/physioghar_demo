import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:physio_ghar_demo/features/schedule_and_session_mgmt/provider/session/completed_list_provider.dart';
import 'package:physio_ghar_demo/features/shared/extensions/number_extension.dart';
import 'package:physio_ghar_demo/features/shared/model/patient/patient_model.dart';
import 'package:physio_ghar_demo/features/shared/utils/app_colors.dart';

class PatientRecordCard extends ConsumerStatefulWidget {
  final PatientModel patient;
  const PatientRecordCard({super.key, required this.patient});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _PatientRecordCardState();
}

class _PatientRecordCardState extends ConsumerState<PatientRecordCard> {
  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
        final sessionList = ref.watch(providerOfCompletedList);
        if (!sessionList.any((list) => list.patientId == widget.patient.id)) {
          return SizedBox();
        }
        return GestureDetector(
          // onTap: () => openPatient(patient),
          child: Container(
            margin: EdgeInsets.only(bottom: 12.spMin),
            padding: EdgeInsets.all(16.spMin),
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
                      width: 48.spMin,
                      height: 48.spMin,
                      decoration: BoxDecoration(
                        color: AppColors.lightBg,
                        borderRadius: BorderRadius.circular(16.spMin),
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        _initials(widget.patient.fullName!),
                        style: GoogleFonts.inter(
                          fontSize: 12.spMin,
                          fontWeight: FontWeight.w700,
                          color: AppColors.primary,
                        ),
                      ),
                    ),

                    12.wSizedBox,

                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            widget.patient.fullName!,
                            style: GoogleFonts.inter(
                              fontSize: 16.spMin,
                              fontWeight: FontWeight.w700,
                              color: AppColors.primaryText,
                            ),
                          ),

                          4.hSizedBox,

                          Text(
                            'Age ${widget.patient.age}  •  ${widget.patient.gender}',
                            style: GoogleFonts.inter(
                              fontSize: 12.spMin,
                              color: AppColors.secondaryText,
                            ),
                          ),
                        ],
                      ),
                    ),

                    const Icon(
                      Icons.chevron_right_rounded,
                      color: AppColors.mutedText,
                    ),
                  ],
                ),

                16.hSizedBox,

                Container(
                  padding: EdgeInsets.all(12.spMin),
                  decoration: BoxDecoration(
                    color: AppColors.mainBg,
                    borderRadius: BorderRadius.circular(12.spMin),
                  ),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.healing_outlined,
                        size: 17,
                        color: AppColors.primary,
                      ),

                      10.wSizedBox,

                      Expanded(
                        child: Text(
                          widget.patient.condition!,
                          style: GoogleFonts.inter(
                            fontSize: 12.spMin,
                            fontWeight: FontWeight.w600,
                            color: AppColors.primaryText,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                12.hSizedBox,

                Row(
                  children: [
                    Icon(
                      Icons.calendar_today_outlined,
                      size: 14.spMin,
                      color: AppColors.mutedText,
                    ),

                    6.wSizedBox,

                    Text(
                      'Last session',
                      style: GoogleFonts.inter(
                        fontSize: 12.spMin,
                        color: AppColors.secondaryText,
                      ),
                    ),

                    const Spacer(),

                    Text(
                      DateFormat(
                        'dd MMM yyyy',
                      ).format(widget.patient.lastSession!),
                      style: GoogleFonts.inter(
                        fontSize: 12.spMin,
                        fontWeight: FontWeight.w600,
                        color: AppColors.primaryText,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  String _initials(String name) {
    final parts = name.split(' ');

    if (parts.length >= 2) {
      return '${parts[0][0]}${parts[1][0]}'.toUpperCase();
    }

    return name.substring(0, 1).toUpperCase();
  }
}
