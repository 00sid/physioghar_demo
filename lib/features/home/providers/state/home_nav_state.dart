import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:physio_ghar_demo/features/home/enum/home_nav_enum.dart';

part 'home_nav_state.freezed.dart';

@freezed
abstract class HomeNavState with _$HomeNavState {
  factory HomeNavState({
    @Default(HomeNavEnum.dash) final HomeNavEnum selectedNav,
  }) = _HomeNavState;
}
