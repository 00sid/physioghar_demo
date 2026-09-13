enum LanguageEnum {
  english,
  nepali;

  String get title {
    switch (this) {
      case LanguageEnum.english:
        return "English";
      case LanguageEnum.nepali:
        return "Nepali";
    }
  }
}
