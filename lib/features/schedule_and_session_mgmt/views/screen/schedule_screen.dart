import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:physio_ghar_demo/features/schedule_and_session_mgmt/views/widgets/schedule/schedule_section.dart';
import 'package:physio_ghar_demo/features/schedule_and_session_mgmt/views/widgets/schedule_header.dart';
import 'package:physio_ghar_demo/features/schedule_and_session_mgmt/views/widgets/schedule_tab_bar.dart';
import 'package:physio_ghar_demo/features/schedule_and_session_mgmt/views/widgets/session/session_section.dart';
import 'package:physio_ghar_demo/features/shared/extensions/number_extension.dart';
import 'package:physio_ghar_demo/features/shared/extensions/widget_extension.dart';

class ScheduleScreen extends ConsumerStatefulWidget {
  const ScheduleScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ScheduleScreenState();
}

class _ScheduleScreenState extends ConsumerState<ScheduleScreen>
    with TickerProviderStateMixin {
  late TabController mainTabController;
  late TabController sessionTabController;

  @override
  void dispose() {
    mainTabController.dispose();
    sessionTabController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    mainTabController = TabController(length: 2, vsync: this);

    sessionTabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            ScheduleHeader(),
            16.hSizedBox,
            ScheduleTabBar(controller: mainTabController),
            Expanded(
              child: TabBarView(
                controller: mainTabController,
                children: [
                  ScheduleSection(),
                  SessionSection(controller: sessionTabController),
                ],
              ),
            ),
          ],
        ),
      ).pXY(20, 16),
    );
  }
}
