import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:physio_ghar_demo/features/account/enum/language_enum.dart';

part 'language_state.freezed.dart';

@freezed
abstract class LanguageState with _$LanguageState {
  factory LanguageState({
    @Default(LanguageEnum.english) final LanguageEnum language,
  }) = _LanguageState;
}
