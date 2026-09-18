import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:physio_ghar_demo/features/schedule_and_session_mgmt/views/widgets/session/session_card.dart';
import 'package:physio_ghar_demo/features/shared/extensions/number_extension.dart';
import 'package:physio_ghar_demo/features/shared/model/session/session_model.dart';
import 'package:physio_ghar_demo/features/shared/utils/app_colors.dart';

class SessionList extends ConsumerStatefulWidget {
  final List<SessionModel> sessionList;
  final String emptyTitleMsg, emptySubTitleMsg;
  const SessionList({
    super.key,
    required this.sessionList,
    required this.emptySubTitleMsg,
    required this.emptyTitleMsg,
  });

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SessionListState();
}

class _SessionListState extends ConsumerState<SessionList> {
  @override
  Widget build(BuildContext context) {
    if (widget.sessionList.isEmpty) {
      return _buildEmptySessionState(
        title: widget.emptyTitleMsg,
        subtitle: widget.emptySubTitleMsg,
      );
    }
    return ListView.builder(
      // padding:  EdgeInsets.fromLTRB(20, 5, 20, 30),
      padding: EdgeInsets.only(bottom: 50.spMin),
      itemCount: widget.sessionList.length,
      itemBuilder: (context, index) {
        return SessionCard(session: widget.sessionList[index]);
      },
    );
  }

  Widget _buildEmptySessionState({
    required String title,
    required String subtitle,
  }) {
    return Center(
      child: Padding(
        padding: EdgeInsets.only(bottom: 90.spMin),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 62.spMin,
              height: 62.spMin,
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.calendar_today_outlined,
                color: AppColors.mutedText,
              ),
            ),

            16.hSizedBox,
            Text(
              title,
              textAlign: TextAlign.center,
              style: GoogleFonts.fraunces(
                fontSize: 20.spMin,
                fontWeight: FontWeight.w700,
                color: AppColors.primaryText,
              ),
            ),

            6.hSizedBox,
            Text(
              subtitle,
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
