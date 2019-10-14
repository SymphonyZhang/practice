import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'symphony_demomessages_all.dart';

class SymphonyDemoLocalizations {
  String get title =>
      Intl.message(
        'hello',
        name: 'title',
        desc: 'demo localizations.',
      );

  String greet(String name) =>
      Intl.message(
        'hello $name',
        name: 'greet',
        desc: 'greet someone.',
        args: [name],
      );

  static SymphonyDemoLocalizations of(BuildContext context){
    return Localizations.of<SymphonyDemoLocalizations>(
      context,
      SymphonyDemoLocalizations,
    );
  }

  static Future<SymphonyDemoLocalizations> load(Locale locale) {
    final String name =
        locale.countryCode.isEmpty?locale.languageCode:locale.toString();

    final String localeName =Intl.canonicalizedLocale(name);

    return initializeMessages(localeName).then((bool _) {
      Intl.defaultLocale = localeName;
      return SymphonyDemoLocalizations();
    });
  }
}

class SymphonyDemoLocalizationsDelegate extends LocalizationsDelegate<SymphonyDemoLocalizations>{
  SymphonyDemoLocalizationsDelegate();

  @override
  Future<SymphonyDemoLocalizations> load(Locale locale) {
    // TODO: implement load
    return SymphonyDemoLocalizations.load(locale);
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
