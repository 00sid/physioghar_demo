import 'package:flutter_riverpod/legacy.dart';
import 'package:physio_ghar_demo/features/shared/model/session/session_model.dart';
import 'package:physio_ghar_demo/features/shared/utils/dummy_data.dart';

class SessionListNotifier extends StateNotifier<List<SessionModel>> {
  SessionListNotifier() : super(kDummySessionList);

  void updateSession(SessionModel session) {
    state = [
      ...state.where((val) => val.sessionId != session.sessionId),
      session,
    ];
  }
}

final providerOfSessionList =
    StateNotifierProvider<SessionListNotifier, List<SessionModel>>((ref) {
      return SessionListNotifier();
    });
