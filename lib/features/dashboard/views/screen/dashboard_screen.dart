import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:physio_ghar_demo/features/dashboard/views/widgets/dashboard_available.dart';
import 'package:physio_ghar_demo/features/dashboard/views/widgets/dashboard_header.dart';
import 'package:physio_ghar_demo/features/dashboard/views/widgets/dashboard_quick.dart';
import 'package:physio_ghar_demo/features/dashboard/views/widgets/dashboard_schedule.dart';
import 'package:physio_ghar_demo/features/dashboard/views/widgets/dashboard_summary.dart';
import 'package:physio_ghar_demo/features/dashboard/views/widgets/dashboard_upcoming.dart';
import 'package:physio_ghar_demo/features/shared/extensions/number_extension.dart';
import 'package:physio_ghar_demo/features/shared/extensions/widget_extension.dart';

class DashboardScreen extends ConsumerStatefulWidget {
  const DashboardScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _DashboardScreenState();
}

class _DashboardScreenState extends ConsumerState<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DashboardHeader(),
            24.hSizedBox,
            DashboardAvailable(),
            24.hSizedBox,
            DashboardSummary(),
            24.hSizedBox,
            DashboardSchedule(),
            24.hSizedBox,
            DashboardUpcoming(),
            24.hSizedBox,
            DashboardQuick(),
            60.hSizedBox,
          ],
        ),
      ).pXY(20, 16),
    );
  }
}
