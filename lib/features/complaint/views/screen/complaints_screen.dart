import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ComplaintsScreen extends ConsumerStatefulWidget {
  const ComplaintsScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _ComplaintsScreenState();
}

class _ComplaintsScreenState extends ConsumerState<ComplaintsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Text("Complain Screen")));
  }
}
