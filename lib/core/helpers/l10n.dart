import 'package:flutter/widgets.dart';

final class L10n {
  L10n._();
  static const String _enCode = 'en';
  static const String _arCode = 'ar';
  static const String _enText = 'English-US';
  static const String _arText = 'العربية';
  static const String languageKey = 'locale';
  static const arabic = Locale(_arCode);
  static const english = Locale(_enCode);
  static const String languagePath = 'assets/languages';

  static const List<Locale> all = [
    english,
    arabic,
  ];

  static String stringToLanguageCode(String text) {
    for (var entry in _isoLangs.entries) {
      if (entry.value.toLowerCase() == text.toLowerCase()) {
        return entry.key;
      }
    }
    // If the targetValue is not found.
    return _enCode;
  }

  static get getArCode => _arCode;
  static get getEnCode => _enCode;

  static Locale languageCodeToLocale(String? languageCode) {
    switch (languageCode) {
      case _enCode:
        return english;
      case _arCode:
        return arabic;
      default:
        return english; // Default to English if not found.
    }
  }

  static final Map<String, String> _isoLangs = {
    _enCode: _enText,
    _arCode: _arText,
  };
}
