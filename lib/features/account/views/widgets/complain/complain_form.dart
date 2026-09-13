import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:physio_ghar_demo/features/account/providers/complain/complain_category_provider.dart';
import 'package:physio_ghar_demo/features/account/providers/complain/complain_list_provider.dart';
import 'package:physio_ghar_demo/features/shared/extensions/context_extension.dart';
import 'package:physio_ghar_demo/features/shared/extensions/number_extension.dart';
import 'package:physio_ghar_demo/features/shared/extensions/widget_extension.dart';
import 'package:physio_ghar_demo/features/shared/model/complain/complain_model.dart';
import 'package:physio_ghar_demo/features/shared/utils/app_colors.dart';

class ComplainForm extends ConsumerStatefulWidget {
  const ComplainForm({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ComplainFormState();
}

class _ComplainFormState extends ConsumerState<ComplainForm> {
  final TextEditingController _subjectController = TextEditingController();

  final TextEditingController _descriptionController = TextEditingController();
  @override
  void dispose() {
    super.dispose();
    _subjectController.dispose();
    _descriptionController.dispose();
  }

  final List<String> categories = [
    'Patient Issue',
    'Booking Issue',
    'Payment Issue',
    'Technical Issue',
    'Other',
  ];

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
        final selectedCategory = ref.watch(providerOfComplainCategory);
        return Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(18),
            border: Border.all(color: AppColors.neutralBg),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'New Complaint',
                style: GoogleFonts.fraunces(
                  fontSize: 20.spMin,
                  fontWeight: FontWeight.w700,
                  color: AppColors.primaryText,
                ),
              ),

              20.hSizedBox,

              // Category
              _fieldLabel('COMPLAINT CATEGORY'),

              8.hSizedBox,

              Container(
                height: 52.spMin,

                decoration: BoxDecoration(
                  color: AppColors.neutralBg,
                  borderRadius: BorderRadius.circular(14),
                ),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton<String>(
                    value: selectedCategory,
                    isExpanded: true,
                    icon: const Icon(
                      Icons.keyboard_arrow_down_rounded,
                      color: AppColors.secondaryText,
                    ),
                    style: GoogleFonts.inter(
                      fontSize: 14.spMin,
                      fontWeight: FontWeight.w500,
                      color: AppColors.primaryText,
                    ),
                    items: categories.map((category) {
                      return DropdownMenuItem(
                        value: category,
                        child: Text(category),
                      );
                    }).toList(),
                    onChanged: (value) {
                      if (value == null) return;

                      ref.read(providerOfComplainCategory.notifier).state =
                          value;
                    },
                  ),
                ).pX(16),
              ),

              16.hSizedBox,
              // Subject
              _fieldLabel('SUBJECT'),

              8.hSizedBox,

              TextField(
                controller: _subjectController,
                decoration: InputDecoration(hintText: "Enter complain subject"),
              ),

              16.hSizedBox,

              // Description
              _fieldLabel('DESCRIPTION'),

              8.hSizedBox,

              TextField(
                controller: _descriptionController,
                maxLines: 5,
                style: GoogleFonts.inter(
                  fontSize: 14,
                  height: 1.5,
                  color: AppColors.primaryText,
                ),
                decoration: InputDecoration(
                  hintText: 'Describe the problem in detail...',
                ),
              ),

              20.hSizedBox,

              // Submit
              SizedBox(
                width: double.infinity,
                height: 50.spMin,
                child: ElevatedButton.icon(
                  onPressed: submitComplaint,
                  icon: Icon(Icons.send_rounded, size: 18.spMin),
                  label: Text(
                    'Submit Complaint',
                    style: GoogleFonts.inter(
                      fontSize: 14.spMin,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.primaryCTA,
                    foregroundColor: Colors.white,
                    elevation: 0,
                    shape: const StadiumBorder(),
                  ),
                ),
              ),
            ],
          ).pad(16),
        ).onPressed(() {
          context.unfocusInputs();
        });
      },
    );
  }

  void submitComplaint() {
    if (_descriptionController.text == "" || _subjectController.text == "") {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("Please fill all form", style: GoogleFonts.inter()),
          backgroundColor: AppColors.error,
          behavior: SnackBarBehavior.floating,
        ),
      );
      return;
    }
    final formattedDate = DateFormat('d MMM yyyy').format(DateTime.now());
    final category = ref.watch(providerOfComplainCategory);
    ref
        .read(providerOfComplainList.notifier)
        .state
        .add(
          ComplainModel(
            date: formattedDate,
            description: _descriptionController.text.trim(),
            subject: _subjectController.text.trim(),
            status: "Submitted",
            category: category,
          ),
        );
    _descriptionController.clear();
    _subjectController.clear();
    _showSuccessDialog();
  }

  Widget _fieldLabel(String text) {
    return Text(
      text,
      style: GoogleFonts.ibmPlexMono(
        fontSize: 10.spMin,
        fontWeight: FontWeight.w700,
        letterSpacing: 1,
        color: AppColors.mutedText,
      ),
    );
  }

  void _showSuccessDialog() {
    showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: 64,
                  height: 64,
                  decoration: const BoxDecoration(
                    color: AppColors.lightBg,
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(
                    Icons.check_rounded,
                    color: AppColors.primary,
                    size: 34,
                  ),
                ),

                const SizedBox(height: 18),

                Text(
                  'Complaint Submitted',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.fraunces(
                    fontSize: 23,
                    fontWeight: FontWeight.w700,
                    color: AppColors.primaryText,
                  ),
                ),

                const SizedBox(height: 8),

                Text(
                  'Your complaint has been successfully submitted to the PhysioGhar admin.',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.inter(
                    fontSize: 14,
                    height: 1.5,
                    color: AppColors.secondaryText,
                  ),
                ),

                const SizedBox(height: 22),

                SizedBox(
                  width: double.infinity,
                  height: 48,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.primaryCTA,
                      foregroundColor: Colors.white,
                      elevation: 0,
                      shape: const StadiumBorder(),
                    ),
                    child: Text(
                      'Done',
                      style: GoogleFonts.inter(fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
