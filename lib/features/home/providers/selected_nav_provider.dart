import 'package:flutter_riverpod/legacy.dart';
import 'package:physio_ghar_demo/features/home/enum/home_nav_enum.dart';
import 'package:physio_ghar_demo/features/home/providers/state/home_nav_state.dart';

class SelectedHomeNavNotifier extends StateNotifier<HomeNavState> {
  SelectedHomeNavNotifier() : super(HomeNavState());

  void changeNav({required HomeNavEnum value}) {
    state = state.copyWith(selectedNav: value);
  }
}

final providerOfSelectedHomeNav =
    StateNotifierProvider.autoDispose<SelectedHomeNavNotifier, HomeNavState>((
      ref,
    ) {
      return SelectedHomeNavNotifier();
    });
