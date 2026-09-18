import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:physio_ghar_demo/features/patient_record/views/widgets/patient_record_header.dart';
import 'package:physio_ghar_demo/features/patient_record/views/widgets/patient_record_list.dart';
import 'package:physio_ghar_demo/features/shared/extensions/number_extension.dart';
import 'package:physio_ghar_demo/features/shared/extensions/widget_extension.dart';

class PatientRecordsScreen extends ConsumerStatefulWidget {
  const PatientRecordsScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _PatientRecordsScreenState();
}

class _PatientRecordsScreenState extends ConsumerState<PatientRecordsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [PatientRecordHeader(), 24.hSizedBox, PatientRecordList()],
        ).pXY(20, 16),
      ),
    );
  }
}
