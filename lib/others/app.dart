import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:physio_ghar_demo/features/home/views/screen/home_screen.dart';
import 'package:physio_ghar_demo/features/shared/utils/app_theme.dart';

class PhysioGharApp extends ConsumerStatefulWidget {
  const PhysioGharApp({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _PhysioGharAppState();
}

class _PhysioGharAppState extends ConsumerState<PhysioGharApp> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: getDesignSize(),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return MaterialApp(
          title: "PhysioGhar Therapist App",
          debugShowCheckedModeBanner: false,
          theme: AppTheme.lightTheme,
          home: HomeScreen(),
        );
      },
    );
  }
}

Size getDesignSize() {
  if (Platform.isIOS) {
    return const Size(375, 812);
  } else {
    return const Size(390, 844);
  }
}
