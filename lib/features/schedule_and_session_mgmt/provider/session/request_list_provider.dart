import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:physio_ghar_demo/features/schedule_and_session_mgmt/enum/session_status.dart';
import 'package:physio_ghar_demo/features/schedule_and_session_mgmt/provider/session/session_list_provider.dart';
import 'package:physio_ghar_demo/features/shared/model/session/session_model.dart';

final providerOfRequestList = Provider<List<SessionModel>>((ref) {
  final sessionList = ref.watch(providerOfSessionList);

  return sessionList
      .where((val) => val.sessionStatus == SessionStatusEnum.request)
      .toList();
});
