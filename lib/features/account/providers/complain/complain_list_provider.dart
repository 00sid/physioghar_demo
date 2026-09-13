import 'package:flutter_riverpod/legacy.dart';
import 'package:physio_ghar_demo/features/shared/model/complain/complain_model.dart';
import 'package:physio_ghar_demo/features/shared/utils/dummy_data.dart';

final providerOfComplainList = StateProvider<List<ComplainModel>>((ref) {
  return kDummyComplains;
});
