import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:physio_ghar_demo/features/others/app.dart';

void main() {
  runApp(ProviderScope(child: const PhysioGharApp()));
}
