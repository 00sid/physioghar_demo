import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:physio_ghar_demo/features/schedule_and_session_mgmt/enum/schedule_status_enum.dart';
import 'package:physio_ghar_demo/features/schedule_and_session_mgmt/provider/schedule/schedule_list_provider.dart';
import 'package:physio_ghar_demo/features/schedule_and_session_mgmt/provider/schedule/schedule_selected_date.dart';
import 'package:physio_ghar_demo/features/shared/extensions/context_navigation_extension.dart';
import 'package:physio_ghar_demo/features/shared/model/schedule/schedule_model.dart';
import 'package:physio_ghar_demo/features/shared/utils/app_colors.dart';

class ScheduleAddTimeSlotButton extends ConsumerStatefulWidget {
  const ScheduleAddTimeSlotButton({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _ScheduleAddTimeSlotButtonState();
}

class _ScheduleAddTimeSlotButtonState
    extends ConsumerState<ScheduleAddTimeSlotButton> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: OutlinedButton.icon(
        onPressed: _showAddSlotDialog,
        icon: Icon(Icons.add_rounded, size: 20.spMin),
        label: Text(
          'Add Available Time Slot',
          style: GoogleFonts.inter(
            fontSize: 12.spMin,
            fontWeight: FontWeight.w700,
          ),
        ),
        style: OutlinedButton.styleFrom(
          foregroundColor: AppColors.primary,
          side: const BorderSide(color: AppColors.primary),
          shape: const StadiumBorder(),
        ),
      ),
    );
  }

  void _showAddSlotDialog() {
    final times = [
      '08:00 AM',
      '09:00 AM',
      '10:00 AM',
      '11:00 AM',
      '12:00 PM',
      '01:00 PM',
      '02:00 PM',
      '03:00 PM',
      '04:00 PM',
      '05:00 PM',
    ];

    String selectedTime = '09:00 AM';

    showModalBottomSheet(
      context: context,
      backgroundColor: AppColors.mainBg,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
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
                      width: 42,
                      height: 4,
                      decoration: BoxDecoration(
                        color: AppColors.mutedText.withOpacity(.3),
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),

                  const SizedBox(height: 22),

                  Text(
                    'Add Available Slot',
                    style: GoogleFonts.fraunces(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      color: AppColors.primaryText,
                    ),
                  ),

                  const SizedBox(height: 20),

                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(14),
                    ),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton<String>(
                        value: selectedTime,
                        isExpanded: true,
                        items: times.map((time) {
                          return DropdownMenuItem(
                            value: time,
                            child: Text(time, style: GoogleFonts.inter()),
                          );
                        }).toList(),
                        onChanged: (value) {
                          if (value == null) return;

                          setSheetState(() {
                            selectedTime = value;
                          });
                        },
                      ),
                    ),
                  ),

                  const SizedBox(height: 20),

                  SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {
                        final selectedDate = ref.read(
                          providerOfScheduleSelectedDate,
                        );
                        // Convert "09:00 AM" -> DateTime
                        final parsedTime = DateFormat(
                          'hh:mm a',
                        ).parse(selectedTime);
                        // Combine selected date + selected time
                        final scheduleDateTime = DateTime(
                          selectedDate.year,
                          selectedDate.month,
                          selectedDate.day,
                          parsedTime.hour,
                          parsedTime.minute,
                        );
                        ref
                            .read(providerOfScheduleList.notifier)
                            .addSchedule(
                              ScheduleModel(
                                status: ScheduleStatusEnum.open,
                                scheduleTime: scheduleDateTime,
                              ),
                            );
                        context.popPage();
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.primaryCTA,
                        foregroundColor: Colors.white,
                        elevation: 0,
                        shape: const StadiumBorder(),
                      ),
                      child: Text(
                        'Add Slot',
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
}
