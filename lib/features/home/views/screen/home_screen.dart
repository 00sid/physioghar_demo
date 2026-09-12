import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:physio_ghar_demo/features/account/views/screen/account_screen.dart';
import 'package:physio_ghar_demo/features/dashboard/views/screen/dashboard_screen.dart';
import 'package:physio_ghar_demo/features/home/views/widgets/custom_bottom_nav.dart';
import 'package:physio_ghar_demo/features/patient_record/views/screen/patient_records_screen.dart';
import 'package:physio_ghar_demo/features/schedule/views/screen/schedule_screen.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  late PageController _pageController;
  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _pageController,
            physics: NeverScrollableScrollPhysics(),
            children: [
              DashboardScreen(),
              ScheduleScreen(),
              PatientRecordsScreen(),
              AccountScreen(),
            ],
          ),
          Positioned(
            bottom: 10,
            left: 20,
            right: 20,
            child: CustomBottomNav(controller: _pageController),
          ),
        ],
      ),
    );
  }
}
