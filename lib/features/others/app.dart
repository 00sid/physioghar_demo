import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:physio_ghar_demo/features/home/views/screen/home_screen.dart';

class PhysioGharApp extends ConsumerStatefulWidget {
  const PhysioGharApp({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _PhysioGharAppState();
}

class _PhysioGharAppState extends ConsumerState<PhysioGharApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomeScreen());
  }
}
