import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:physio_ghar_demo/features/account/providers/complain/complain_list_provider.dart';
import 'package:physio_ghar_demo/features/shared/extensions/number_extension.dart';
import 'package:physio_ghar_demo/features/shared/model/complain/complain_model.dart';
import 'package:physio_ghar_demo/features/shared/utils/app_colors.dart';

class ComplainList extends ConsumerStatefulWidget {
  const ComplainList({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ComplainListState();
}

class _ComplainListState extends ConsumerState<ComplainList> {
  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
        final complaints = ref.watch(providerOfComplainList);

        return Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Previous Complaints',
                  style: GoogleFonts.fraunces(
                    fontSize: 22,
                    fontWeight: FontWeight.w700,
                    color: AppColors.primaryText,
                  ),
                ),

                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 6,
                  ),
                  decoration: BoxDecoration(
                    color: AppColors.lightBg,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Text(
                    '${complaints.length}',
                    style: GoogleFonts.inter(
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                      color: AppColors.primary,
                    ),
                  ),
                ),
              ],
            ),
            14.hSizedBox,
            if (complaints.isEmpty)
              _emptyComplaints()
            else
              ...complaints.map((complaint) => _complaintCard(complaint)),
          ],
        );
      },
    );
  }

  Widget _complaintCard(ComplainModel complaint) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: AppColors.neutralBg),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  complaint.category ?? '',
                  style: GoogleFonts.ibmPlexMono(
                    fontSize: 10,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 1,
                    color: AppColors.secondary,
                  ),
                ),
              ),

              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 6,
                ),
                decoration: BoxDecoration(
                  color: AppColors.pendingState,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Text(
                  complaint.status ?? 'Submitted',
                  style: GoogleFonts.inter(
                    fontSize: 10,
                    fontWeight: FontWeight.w700,
                    color: AppColors.primaryCTA,
                  ),
                ),
              ),
            ],
          ),

          const SizedBox(height: 10),

          Text(
            complaint.subject ?? '',
            style: GoogleFonts.inter(
              fontSize: 15,
              fontWeight: FontWeight.w700,
              color: AppColors.primaryText,
            ),
          ),

          const SizedBox(height: 7),

          Text(
            complaint.description ?? '',
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
            style: GoogleFonts.inter(
              fontSize: 13,
              height: 1.45,
              color: AppColors.secondaryText,
            ),
          ),

          const SizedBox(height: 12),

          Row(
            children: [
              const Icon(
                Icons.calendar_today_outlined,
                size: 14,
                color: AppColors.mutedText,
              ),

              const SizedBox(width: 6),

              Text(
                'Submitted ${complaint.date ?? ''}',
                style: GoogleFonts.inter(
                  fontSize: 11,
                  color: AppColors.mutedText,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _emptyComplaints() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          Container(
            width: 54,
            height: 54,
            decoration: const BoxDecoration(
              color: AppColors.neutralBg,
              shape: BoxShape.circle,
            ),
            child: const Icon(
              Icons.support_agent_rounded,
              color: AppColors.secondary,
            ),
          ),

          const SizedBox(height: 14),

          Text(
            'No complaints yet',
            style: GoogleFonts.inter(
              fontSize: 15,
              fontWeight: FontWeight.w700,
              color: AppColors.primaryText,
            ),
          ),

          const SizedBox(height: 5),

          Text(
            'Submitted complaints will appear here.',
            textAlign: TextAlign.center,
            style: GoogleFonts.inter(fontSize: 12, color: AppColors.mutedText),
          ),
        ],
      ),
    );
  }
}
