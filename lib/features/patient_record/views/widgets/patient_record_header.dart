import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:physio_ghar_demo/features/shared/extensions/number_extension.dart';
import 'package:physio_ghar_demo/features/shared/utils/app_colors.dart';

class PatientRecordHeader extends ConsumerStatefulWidget {
  const PatientRecordHeader({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _PatientRecordHeaderState();
}

class _PatientRecordHeaderState extends ConsumerState<PatientRecordHeader> {
  List patients = [1, 2, 3, 4];
  final TextEditingController _searchController = TextEditingController();
  @override
  void dispose() {
    super.dispose();
    _searchController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'PATIENTS',
                    style: GoogleFonts.ibmPlexMono(
                      fontSize: 12.spMin,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1.5,
                      color: AppColors.primary,
                    ),
                  ),

                  4.hSizedBox,

                  Text(
                    'Patient Records',
                    style: GoogleFonts.fraunces(
                      fontSize: 28.spMin,
                      fontWeight: FontWeight.w700,
                      color: AppColors.primaryText,
                    ),
                  ),

                  4.hSizedBox,

                  Text(
                    '${patients.length} active patients',
                    style: GoogleFonts.inter(
                      fontSize: 12.spMin,
                      color: AppColors.secondaryText,
                    ),
                  ),
                ],
              ),
            ),

            Container(
              width: 44.spMin,
              height: 44.spMin,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(14.spMin),
              ),
              child: const Icon(
                Icons.people_outline_rounded,
                color: AppColors.primary,
              ),
            ),
          ],
        ),
        16.hSizedBox,
        _buildSearch(searchController: _searchController),
      ],
    );
  }

  Widget _buildSearch({required TextEditingController searchController}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      child: TextField(
        controller: searchController,
        onChanged: (value) {
          // setState(() {
          //   searchQuery = value;
          // });
        },
        decoration: InputDecoration(
          hintText: 'Search patients or conditions...',
          hintStyle: GoogleFonts.inter(
            fontSize: 13,
            color: AppColors.mutedText,
          ),
          prefixIcon: const Icon(
            Icons.search_rounded,
            color: AppColors.mutedText,
          ),
          // suffixIcon: searchQuery.isNotEmpty
          //     ? IconButton(
          //         onPressed: () {
          //           searchController.clear();

          //           setState(() {
          //             searchQuery = '';
          //           });
          //         },
          //         icon: const Icon(Icons.close_rounded, size: 19),
          //       )
          //     : null,
          filled: true,
          fillColor: Colors.white,
          contentPadding: EdgeInsets.symmetric(vertical: 16.spMin),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16.spMin),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}
