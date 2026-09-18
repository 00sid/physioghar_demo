import 'package:flutter_riverpod/legacy.dart';

final providerOfScheduleSelectedDate = StateProvider.autoDispose<DateTime>((
  ref,
) {
  final today = DateTime.now();

  return DateTime(today.year, today.month, today.day);
});
