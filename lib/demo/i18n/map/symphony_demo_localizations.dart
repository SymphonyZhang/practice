import 'package:flutter/material.dart';

class SymphonyDemoLocalizations {
  final Locale locale;
  SymphonyDemoLocalizations(this.locale);

  static Map<String,Map<String,String>> _localized = {
    'en': {
      'title':'Hello',
    },
    'zh': {
      'title':'你好',
    }
  };

  String get title {
    return _localized[locale.languageCode]['title'];
  }
}