import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:physio_ghar_demo/features/schedule_and_session_mgmt/enum/session_status.dart';
import 'package:physio_ghar_demo/features/shared/extensions/number_extension.dart';
import 'package:physio_ghar_demo/features/shared/extensions/widget_extension.dart';
import 'package:physio_ghar_demo/features/shared/model/session/session_model.dart';
import 'package:physio_ghar_demo/features/shared/utils/app_colors.dart';

class DashSessionCard extends ConsumerStatefulWidget {
  final SessionModel session;
  const DashSessionCard({super.key, required this.session});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _DashSessionCardState();
}

class _DashSessionCardState extends ConsumerState<DashSessionCard> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        borderRadius: BorderRadius.circular(16.spMin),
        onTap: () {
          // Navigate to session details later.
        },
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16.spMin),
            border: Border.all(color: AppColors.neutralBg),
          ),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Time
                  SizedBox(
                    width: 70.spMin,
                    child: Text(
                      DateFormat('HH:mm').format(widget.session.sessionDate!),

                      style: GoogleFonts.inter(
                        fontSize: 12.spMin,
                        fontWeight: FontWeight.w700,
                        color: AppColors.primary,
                      ),
                    ),
                  ),

                  Container(
                    width: 1,
                    height: 62.spMin,
                    color: AppColors.neutralBg,
                  ),

                  14.wSizedBox,

                  // Patient information
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.session.patient!,
                          style: GoogleFonts.fraunces(
                            fontSize: 18.spMin,
                            fontWeight: FontWeight.w600,
                            color: AppColors.primaryText,
                          ),
                        ),

                        3.hSizedBox,

                        Text(
                          widget.session.treatment!,
                          style: GoogleFonts.inter(
                            fontSize: 12.spMin,
                            color: AppColors.secondaryText,
                          ),
                        ),

                        10.hSizedBox,

                        Row(
                          children: [
                            Icon(
                              widget.session.location!.icon,
                              size: 15.spMin,
                              color: AppColors.mutedText,
                            ),

                            5.wSizedBox,

                            Text(
                              widget.session.location!.title,
                              style: GoogleFonts.inter(
                                fontSize: 11,
                                fontWeight: FontWeight.w500,
                                color: AppColors.secondaryText,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),

                  8.wSizedBox,

                  _statusPill(widget.session.sessionStatus!),
                ],
              ),

              14.hSizedBox,

              const Divider(height: 1, color: AppColors.neutralBg),

              10.hSizedBox,

              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'View session',
                    style: GoogleFonts.inter(
                      fontSize: 11.spMin,
                      fontWeight: FontWeight.w600,
                      color: AppColors.primary,
                    ),
                  ),

                  5.wSizedBox,

                  Icon(
                    Icons.arrow_forward_rounded,
                    size: 16.spMin,
                    color: AppColors.primary,
                  ),
                ],
              ),
            ],
          ).pad(16),
        ),
      ),
    );
  }

  Widget _statusPill(SessionStatusEnum status) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.pendingState,
        borderRadius: BorderRadius.circular(50.spMin),
      ),
      child: Text(
        status.title,
        style: GoogleFonts.inter(
          fontSize: 9.5.spMin,
          fontWeight: FontWeight.w600,
          color: AppColors.primaryCTA,
        ),
      ).pXY(9.spMin, 6.spMin),
    );
  }
}
