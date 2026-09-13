import 'package:flutter_riverpod/legacy.dart';

final providerOfComplainCategory = StateProvider.autoDispose<String>((ref) {
  return 'Patient Issue';
});
