import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:physio_ghar_demo/features/schedule_and_session_mgmt/views/widgets/session/cancelled_list.dart';
import 'package:physio_ghar_demo/features/schedule_and_session_mgmt/views/widgets/session/completed_list.dart';
import 'package:physio_ghar_demo/features/schedule_and_session_mgmt/views/widgets/session/request_list.dart';
import 'package:physio_ghar_demo/features/schedule_and_session_mgmt/views/widgets/session/session_tab_bar.dart';
import 'package:physio_ghar_demo/features/schedule_and_session_mgmt/views/widgets/session/upcoming_list.dart';
import 'package:physio_ghar_demo/features/shared/extensions/number_extension.dart';

class SessionSection extends ConsumerStatefulWidget {
  final TabController controller;
  const SessionSection({super.key, required this.controller});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SessionSectionState();
}

class _SessionSectionState extends ConsumerState<SessionSection> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        12.hSizedBox,
        SessionTabBar(controller: widget.controller),
        12.hSizedBox,
        Expanded(
          child: TabBarView(
            controller: widget.controller,
            children: [
              RequestList(),
              UpcomingList(),
              CompletedList(),
              CancelledList(),
            ],
          ),
        ),
      ],
    );
  }
}
