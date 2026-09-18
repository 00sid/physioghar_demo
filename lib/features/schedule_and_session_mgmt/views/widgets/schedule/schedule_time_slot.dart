import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:physio_ghar_demo/features/schedule_and_session_mgmt/enum/schedule_status_enum.dart';
import 'package:physio_ghar_demo/features/schedule_and_session_mgmt/provider/schedule/schedule_list_provider.dart';
import 'package:physio_ghar_demo/features/shared/extensions/context_navigation_extension.dart';
import 'package:physio_ghar_demo/features/shared/extensions/date_time_extension.dart';
import 'package:physio_ghar_demo/features/shared/extensions/number_extension.dart';
import 'package:physio_ghar_demo/features/shared/model/schedule/schedule_model.dart';
import 'package:physio_ghar_demo/features/shared/utils/app_colors.dart';

class ScheduleTimeSlot extends ConsumerStatefulWidget {
  final ScheduleModel slot;
  const ScheduleTimeSlot({super.key, required this.slot});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _ScheduleTimeSlotState();
}

class _ScheduleTimeSlotState extends ConsumerState<ScheduleTimeSlot> {
  @override
  Widget build(BuildContext context) {
    final status = widget.slot.status;

    final isOpen = status == ScheduleStatusEnum.open;
    final isBooked = status == ScheduleStatusEnum.booked;
    final isBlocked = status == ScheduleStatusEnum.blocked;

    Color backgroundColor;
    Color statusColor;
    Color statusTextColor;

    if (isOpen) {
      backgroundColor = Colors.white;
      statusColor = AppColors.lightBg;
      statusTextColor = AppColors.primary;
    } else if (isBooked) {
      backgroundColor = Colors.white;
      statusColor = AppColors.pendingState;
      statusTextColor = AppColors.primaryCTA;
    } else {
      backgroundColor = Colors.white;
      statusColor = AppColors.errorBg;
      statusTextColor = AppColors.error;
    }
    return GestureDetector(
      onTap: () {
        _showSlotActions(widget.slot);
      },
      child: Container(
        margin: EdgeInsets.only(bottom: 10.spMin),
        padding: EdgeInsets.all(14.spMin),
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(16.spMin),
          border: Border.all(
            color: isBlocked
                ? AppColors.error.withOpacity(.15)
                : AppColors.neutralBg,
          ),
        ),
        child: Row(
          children: [
            SizedBox(
              width: 76.spMin,
              child: Text(
                widget.slot.scheduleTime!.formattedTime12Hour,
                style: GoogleFonts.fraunces(
                  fontSize: 16.spMin,
                  fontWeight: FontWeight.w700,
                  color: AppColors.primaryText,
                ),
              ),
            ),

            Container(
              width: 1.spMin,
              height: 38.spMin,
              color: AppColors.neutralBg,
            ),

            12.wSizedBox,

            Expanded(
              child: isBooked
                  ? Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.slot.patientName ?? '',
                          style: GoogleFonts.inter(
                            fontSize: 12.spMin,
                            fontWeight: FontWeight.w700,
                            color: AppColors.primaryText,
                          ),
                        ),
                        const SizedBox(height: 3),
                        Text(
                          widget.slot.treatment ?? '',
                          style: GoogleFonts.inter(
                            fontSize: 10.spMin,
                            color: AppColors.secondaryText,
                          ),
                        ),
                      ],
                    )
                  : Text(
                      isOpen ? 'Available for booking' : 'Time slot blocked',
                      style: GoogleFonts.inter(
                        fontSize: 12.spMin,
                        color: AppColors.secondaryText,
                      ),
                    ),
            ),

            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 8.spMin,
                vertical: 6.spMin,
              ),
              decoration: BoxDecoration(
                color: statusColor,
                borderRadius: BorderRadius.circular(20.spMin),
              ),
              child: Text(
                widget.slot.status!.title.toUpperCase(),
                style: GoogleFonts.ibmPlexMono(
                  fontSize: 8.spMin,
                  fontWeight: FontWeight.w700,
                  letterSpacing: .6,
                  color: statusTextColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _showSlotActions(ScheduleModel slot) {
    final status = slot.status;

    showModalBottomSheet(
      context: context,
      backgroundColor: AppColors.mainBg,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
      ),
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.fromLTRB(20, 12, 20, 30),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: 42,
                height: 4,
                decoration: BoxDecoration(
                  color: AppColors.mutedText.withOpacity(.3),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),

              const SizedBox(height: 20),

              Text(
                slot.scheduleTime!.formattedTime12Hour,
                style: GoogleFonts.fraunces(
                  fontSize: 25,
                  fontWeight: FontWeight.w700,
                  color: AppColors.primaryText,
                ),
              ),

              const SizedBox(height: 5),

              Text(
                slot.status!.title.toUpperCase(),
                style: GoogleFonts.ibmPlexMono(
                  fontSize: 10,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 1,
                  color: AppColors.secondary,
                ),
              ),

              const SizedBox(height: 22),

              if (status == ScheduleStatusEnum.open)
                _sheetAction(
                  icon: Icons.block_rounded,
                  title: 'Block this slot',
                  color: AppColors.error,
                  onTap: () {
                    ref
                        .read(providerOfScheduleList.notifier)
                        .updateSchedule(
                          slot.copyWith(status: ScheduleStatusEnum.blocked),
                        );

                    context.popPage();
                  },
                ),

              if (status == ScheduleStatusEnum.blocked)
                _sheetAction(
                  icon: Icons.lock_open_rounded,
                  title: 'Make slot available',
                  color: AppColors.primary,
                  onTap: () {
                    ref
                        .read(providerOfScheduleList.notifier)
                        .updateSchedule(
                          slot.copyWith(status: ScheduleStatusEnum.open),
                        );
                    context.popPage();
                  },
                ),

              if (status == ScheduleStatusEnum.booked)
                _sheetAction(
                  icon: Icons.calendar_month_outlined,
                  title: 'View session details',
                  color: AppColors.primary,
                  onTap: () {
                    context.popPage();

                    // mainTabController.animateTo(1);
                    // sessionTabController.animateTo(1);
                  },
                ),
            ],
          ),
        );
      },
    );
  }

  Widget _sheetAction({
    required IconData icon,
    required String title,
    required Color color,
    required VoidCallback onTap,
  }) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(16),
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Row(
          children: [
            Icon(icon, color: color),
            const SizedBox(width: 12),
            Text(
              title,
              style: GoogleFonts.inter(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: color,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
