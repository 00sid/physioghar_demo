import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:physio_ghar_demo/features/account/views/widgets/complain/complain_form.dart';
import 'package:physio_ghar_demo/features/account/views/widgets/complain/complain_header.dart';
import 'package:physio_ghar_demo/features/account/views/widgets/complain/complain_list.dart';
import 'package:physio_ghar_demo/features/shared/extensions/context_extension.dart';
import 'package:physio_ghar_demo/features/shared/extensions/number_extension.dart';
import 'package:physio_ghar_demo/features/shared/extensions/widget_extension.dart';
import 'package:physio_ghar_demo/features/shared/utils/app_colors.dart';

class ComplaintsScreen extends StatefulWidget {
  const ComplaintsScreen({super.key});

  @override
  State<ComplaintsScreen> createState() => _ComplaintsScreenState();
}

class _ComplaintsScreenState extends State<ComplaintsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child:
            ListView(
              padding: EdgeInsets.zero,
              children: [
                ComplainHeader(),

                8.hSizedBox,

                Text(
                  'Tell the PhysioGhar admin about a problem or concern.',
                  style: GoogleFonts.inter(
                    fontSize: 12.spMin,
                    height: 1.5,
                    color: AppColors.secondaryText,
                  ),
                ),

                24.hSizedBox,

                // Complaint form
                ComplainForm(),

                24.hSizedBox,

                // Previous complaints
                ComplainList(),
              ],
            ).pXY(20, 16).onPressed(() {
              context.unfocusInputs();
            }),
      ),
    );
  }
}
