import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:physio_ghar_demo/features/schedule_and_session_mgmt/enum/session_status.dart';
import 'package:physio_ghar_demo/features/schedule_and_session_mgmt/provider/session/selected_time_reschedule_provider.dart';
import 'package:physio_ghar_demo/features/schedule_and_session_mgmt/provider/session/session_list_provider.dart';
import 'package:physio_ghar_demo/features/shared/extensions/context_navigation_extension.dart';
import 'package:physio_ghar_demo/features/shared/extensions/number_extension.dart';
import 'package:physio_ghar_demo/features/shared/extensions/string_extension.dart';
import 'package:physio_ghar_demo/features/shared/model/session/session_model.dart';
import 'package:physio_ghar_demo/features/shared/utils/app_colors.dart';

class SessionCard extends ConsumerStatefulWidget {
  final SessionModel session;
  const SessionCard({super.key, required this.session});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SessionCardState();
}

class _SessionCardState extends ConsumerState<SessionCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _showSessionDetails(widget.session);
      },
      child: Container(
        margin: EdgeInsets.only(bottom: 12.spMin),
        padding: EdgeInsets.all(16.spMin),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(18.spMin),
          border: Border.all(color: AppColors.neutralBg),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  width: 44.spMin,
                  height: 44.spMin,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: AppColors.lightBg,
                    borderRadius: BorderRadius.circular(14.spMin),
                  ),
                  child: Text(
                    widget.session.patient!.initials(),
                    style: GoogleFonts.fraunces(
                      fontSize: 16,
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
                        widget.session.patient ?? '',
                        style: GoogleFonts.inter(
                          fontSize: 14.spMin,
                          fontWeight: FontWeight.w700,
                          color: AppColors.primaryText,
                        ),
                      ),

                      4.hSizedBox,

                      Text(
                        widget.session.treatment ?? '',
                        style: GoogleFonts.inter(
                          fontSize: 12.spMin,
                          color: AppColors.secondaryText,
                        ),
                      ),
                    ],
                  ),
                ),

                _statusPill(widget.session.sessionStatus!),
              ],
            ),

            16.hSizedBox,

            Container(height: 1.spMin, color: AppColors.neutralBg),

            12.hSizedBox,

            Row(
              children: [
                _sessionInfo(
                  Icons.calendar_today_outlined,
                  DateFormat('dd MMM yyyy').format(widget.session.sessionDate!),
                ),

                16.wSizedBox,

                _sessionInfo(
                  Icons.access_time_rounded,
                  DateFormat('HH:mm').format(widget.session.sessionDate!),
                ),
              ],
            ),

            8.hSizedBox,

            _sessionInfo(
              Icons.location_on_outlined,
              widget.session.location!.title,
            ),

            if (widget.session.sessionStatus == SessionStatusEnum.request) ...[
              16.hSizedBox,

              Row(
                children: [
                  Expanded(
                    child: OutlinedButton(
                      onPressed: () {
                        final session = widget.session.copyWith(
                          sessionStatus: SessionStatusEnum.cancelled,
                          sessionDate: DateTime.now(),
                        );
                        _declineRequest(session);
                      },
                      style: OutlinedButton.styleFrom(
                        foregroundColor: AppColors.error,
                        side: const BorderSide(color: AppColors.error),
                        shape: const StadiumBorder(),
                      ),
                      child: Text(
                        'Decline',
                        style: GoogleFonts.inter(
                          fontSize: 12.spMin,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(width: 10),
                  10.wSizedBox,

                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        final session = widget.session.copyWith(
                          sessionStatus: SessionStatusEnum.upcoming,
                        );
                        _acceptRequest(session);
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.primaryCTA,
                        foregroundColor: Colors.white,
                        elevation: 0,
                        shape: const StadiumBorder(),
                      ),
                      child: Text(
                        'Accept',
                        style: GoogleFonts.inter(
                          fontSize: 12.spMin,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],

            if (widget.session.sessionStatus == SessionStatusEnum.upcoming) ...[
              16.hSizedBox,

              Row(
                children: [
                  Expanded(
                    child: OutlinedButton(
                      onPressed: () {
                        _showRescheduleDialog(widget.session);
                      },
                      style: OutlinedButton.styleFrom(
                        foregroundColor: AppColors.primary,
                        side: const BorderSide(color: AppColors.primary),
                        shape: const StadiumBorder(),
                      ),
                      child: Text(
                        'Reschedule',
                        style: GoogleFonts.inter(
                          fontSize: 12.spMin,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(width: 10),
                  10.wSizedBox,

                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        final session = widget.session.copyWith(
                          sessionStatus: SessionStatusEnum.completed,
                        );
                        _completeSession(session);
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.primary,
                        foregroundColor: Colors.white,
                        elevation: 0,
                        shape: const StadiumBorder(),
                      ),
                      child: Text(
                        'Complete',
                        style: GoogleFonts.inter(
                          fontSize: 12.spMin,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],

            if (widget.session.sessionStatus ==
                SessionStatusEnum.completed) ...[
              const SizedBox(height: 14),
              16.hSizedBox,

              Container(
                padding: EdgeInsets.all(12.spMin),
                decoration: BoxDecoration(
                  color: AppColors.neutralBg,
                  borderRadius: BorderRadius.circular(12.spMin),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.notes_outlined,
                      size: 16.spMin,
                      color: AppColors.primary,
                    ),

                    const SizedBox(width: 8),

                    // Expanded(
                    //   child: Text(
                    //     widget.session['remarks'] ?? '',
                    //     style: GoogleFonts.inter(
                    //       fontSize: 10.spMin,
                    //       height: 1.4,
                    //       color: AppColors.secondaryText,
                    //     ),
                    //   ),
                    // ),
                  ],
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }

  void _showSessionDetails(SessionModel session) {
    showModalBottomSheet(
      context: context,
      backgroundColor: AppColors.mainBg,
      isScrollControlled: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(26.spMin)),
      ),
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.fromLTRB(20, 12, 20, 35),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Container(
                  width: 42.spMin,
                  height: 4.spMin,
                  decoration: BoxDecoration(
                    color: AppColors.mutedText.withOpacity(.3),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),

              22.hSizedBox,

              Text(
                'Session Details',
                style: GoogleFonts.fraunces(
                  fontSize: 24.spMin,
                  fontWeight: FontWeight.w700,
                  color: AppColors.primaryText,
                ),
              ),

              20.hSizedBox,

              _detailItem('PATIENT', session.patient ?? ''),

              _detailItem('TREATMENT', session.treatment ?? ''),

              _detailItem(
                'DATE',
                DateFormat('dd MMM yyyy').format(session.sessionDate!),
              ),

              _detailItem(
                'TIME',
                DateFormat('HH:mm').format(session.sessionDate!),
              ),

              _detailItem('LOCATION', session.location!.title),

              _detailItem('STATUS', session.sessionStatus!.title),

              if (session.sessionStatus == SessionStatusEnum.completed)
                _detailItem('THERAPIST REMARKS', 'No remarks added.'),
            ],
          ),
        );
      },
    );
  }

  Widget _detailItem(String label, String value) {
    return Padding(
      padding: EdgeInsets.only(bottom: 16.spMin),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: GoogleFonts.ibmPlexMono(
              fontSize: 10.spMin,
              fontWeight: FontWeight.w700,
              letterSpacing: 1,
              color: AppColors.mutedText,
            ),
          ),

          4.hSizedBox,

          Text(
            value,
            style: GoogleFonts.inter(
              fontSize: 14.spMin,
              color: AppColors.primaryText,
            ),
          ),
        ],
      ),
    );
  }

  void _completeSession(SessionModel session) {
    ref.read(providerOfSessionList.notifier).updateSession(session);

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          'Session marked as completed.',
          style: GoogleFonts.inter(),
        ),
        backgroundColor: AppColors.primary,
        behavior: SnackBarBehavior.floating,
      ),
    );
  }

  Widget _sessionInfo(IconData icon, String text) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, size: 14.spMin, color: AppColors.mutedText),

        const SizedBox(width: 5),

        Flexible(
          child: Text(
            text,
            style: GoogleFonts.inter(
              fontSize: 10,
              color: AppColors.secondaryText,
            ),
          ),
        ),
      ],
    );
  }

  void _acceptRequest(SessionModel session) {
    ref.read(providerOfSessionList.notifier).updateSession(session);

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          'Booking accepted and moved to Upcoming.',
          style: GoogleFonts.inter(),
        ),
        backgroundColor: AppColors.primary,
        behavior: SnackBarBehavior.floating,
      ),
    );
  }

  Widget _statusPill(SessionStatusEnum status) {
    Color background;
    Color textColor;

    switch (status) {
      case SessionStatusEnum.request:
        background = AppColors.pendingState;
        textColor = AppColors.primaryCTA;
        break;

      case SessionStatusEnum.upcoming:
        background = AppColors.lightBg;
        textColor = AppColors.primary;
        break;

      case SessionStatusEnum.completed:
        background = AppColors.neutralBg;
        textColor = AppColors.secondaryText;
        break;

      default:
        background = AppColors.errorBg;
        textColor = AppColors.error;
    }

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
      decoration: BoxDecoration(
        color: background,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        status.title.toUpperCase(),
        style: GoogleFonts.ibmPlexMono(
          fontSize: 8,
          fontWeight: FontWeight.w700,
          letterSpacing: .5,
          color: textColor,
        ),
      ),
    );
  }

  void _showRescheduleDialog(SessionModel session) {
    final times = [
      '09:00',
      '10:00',
      '11:00',
      '12:00',
      '13:00',
      '14:00',
      '15:00',
      '16:00',
    ];

    // Get current session time
    String selectedTime = DateFormat('HH:mm').format(session.sessionDate!);

    showModalBottomSheet(
      context: context,
      backgroundColor: AppColors.mainBg,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(24.spMin)),
      ),
      builder: (context) {
        return StatefulBuilder(
          builder: (context, setSheetState) {
            return Padding(
              padding: const EdgeInsets.fromLTRB(20, 12, 20, 30),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Container(
                      width: 42.spMin,
                      height: 4.spMin,
                      decoration: BoxDecoration(
                        color: AppColors.mutedText.withOpacity(.3),
                        borderRadius: BorderRadius.circular(20.spMin),
                      ),
                    ),
                  ),

                  20.hSizedBox,

                  Text(
                    'Reschedule Session',
                    style: GoogleFonts.fraunces(
                      fontSize: 24.spMin,
                      fontWeight: FontWeight.w700,
                      color: AppColors.primaryText,
                    ),
                  ),

                  4.hSizedBox,

                  Text(
                    session.patient ?? '',
                    style: GoogleFonts.inter(
                      fontSize: 12.spMin,
                      color: AppColors.secondaryText,
                    ),
                  ),

                  20.hSizedBox,

                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 16.spMin),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(14.spMin),
                    ),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton<String>(
                        value: selectedTime,
                        isExpanded: true,
                        items: times.map((time) {
                          return DropdownMenuItem<String>(
                            value: time,
                            child: Text(time, style: GoogleFonts.inter()),
                          );
                        }).toList(),
                        onChanged: (value) {
                          if (value == null) return;

                          setSheetState(() {
                            selectedTime = value;
                          });

                          ref
                                  .read(
                                    providerOfSelectedTimeReschedule.notifier,
                                  )
                                  .state =
                              value;
                        },
                      ),
                    ),
                  ),

                  20.hSizedBox,

                  SizedBox(
                    width: double.infinity,
                    height: 50.spMin,
                    child: ElevatedButton(
                      onPressed: () {
                        // Convert selected "HH:mm" into hour/minute
                        final parsedTime = DateFormat(
                          'HH:mm',
                        ).parse(selectedTime);

                        final oldDate = session.sessionDate;

                        // Keep the original date,
                        // but replace the time.
                        final updatedDateTime = DateTime(
                          oldDate!.year,
                          oldDate.month,
                          oldDate.day,
                          parsedTime.hour,
                          parsedTime.minute,
                        );

                        final updatedSession = session.copyWith(
                          sessionDate: updatedDateTime,
                        );

                        ref
                            .read(providerOfSessionList.notifier)
                            .updateSession(updatedSession);

                        context.popPage();
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.primary,
                        foregroundColor: Colors.white,
                        elevation: 0,
                        shape: const StadiumBorder(),
                      ),
                      child: Text(
                        'Confirm Reschedule',
                        style: GoogleFonts.inter(fontWeight: FontWeight.w700),
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }

  void _declineRequest(SessionModel session) {
    ref.read(providerOfSessionList.notifier).updateSession(session);

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Booking request declined.', style: GoogleFonts.inter()),
        backgroundColor: AppColors.error,
        behavior: SnackBarBehavior.floating,
      ),
    );
  }

  // String _initials(String name) {
  //   final parts = name.split(' ');

  //   if (parts.length >= 2) {
  //     return '${parts.first[0]}${parts.last[0]}'.toUpperCase();
  //   }

  //   if (name.isNotEmpty) {
  //     return name[0].toUpperCase();
  //   }

  //   return '?';
  // }
}
