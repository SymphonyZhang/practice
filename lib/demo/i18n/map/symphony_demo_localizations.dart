import 'package:flutter/foundation.dart' show SynchronousFuture;
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

class SymphonyDemoLocalizationsDelegate extends LocalizationsDelegate<SymphonyDemoLocalizations>{
  SymphonyDemoLocalizationsDelegate();

  @override
  Future<SymphonyDemoLocalizations> load(Locale locale) {
    // TODO: implement load
    return SynchronousFuture<SymphonyDemoLocalizations>(
      SymphonyDemoLocalizations(locale)
    );
  }

  @override
  bool isSupported(Locale locale) {
    return true;
  }

  @override
  bool shouldReload(LocalizationsDelegate<SymphonyDemoLocalizations> old) {
    return false;
  }
}