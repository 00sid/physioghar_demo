import 'package:flutter_riverpod/legacy.dart';
import 'package:physio_ghar_demo/features/account/providers/account/state/language_state.dart';

final providerOfSelectedLanguage = StateProvider<LanguageState>((ref) {
  return LanguageState();
});
