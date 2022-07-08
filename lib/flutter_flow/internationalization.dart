import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations);

  static List<String> languages() => ['zh_Hans', 'en', 'ms'];

  String get languageCode => locale.languageCode;
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.languageCode] ?? '';

  String getVariableText({
    String zh_HansText = '',
    String enText = '',
    String msText = '',
  }) =>
      [zh_HansText, enText, msText][languageIndex] ?? '';
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) =>
      FFLocalizations.languages().contains(locale.languageCode);

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // gameslist
  {
    '7mo4yj6p': {
      'zh_Hans': '练习',
      'en': '',
      'ms': '',
    },
    '4s2j1ign': {
      'zh_Hans': '比赛',
      'en': '',
      'ms': '',
    },
    'iv5g24li': {
      'zh_Hans': '排行榜',
      'en': '',
      'ms': '',
    },
    'hvg3u1bs': {
      'zh_Hans': 'Page Title',
      'en': '',
      'ms': '',
    },
    'nqzba6gx': {
      'zh_Hans': 'Home',
      'en': '',
      'ms': '',
    },
  },
  // add1
  {
    '27er7xkd': {
      'zh_Hans': 'Page Title',
      'en': '',
      'ms': '',
    },
    '568mn6pq': {
      'zh_Hans': 'Home',
      'en': '',
      'ms': '',
    },
  },
  // postnew
  {
    'rdb871ew': {
      'zh_Hans': 'Page Title',
      'en': '',
      'ms': '',
    },
    'r1ijg1ma': {
      'zh_Hans': 'Hello World',
      'en': '',
      'ms': '',
    },
    '2gorgbzp': {
      'zh_Hans': 'Home',
      'en': '',
      'ms': '',
    },
  },
  // home
  {
    'r34tcg1b': {
      'zh_Hans': 'Page Title',
      'en': '',
      'ms': '',
    },
    'k6229hjp': {
      'zh_Hans': 'Home',
      'en': '',
      'ms': '',
    },
  },
  // scrolltry
  {
    '55thjtog': {
      'zh_Hans': 'Page Title',
      'en': '',
      'ms': '',
    },
    '2vv63z3k': {
      'zh_Hans': 'Home',
      'en': '',
      'ms': '',
    },
  },
  // abcd
  {
    'kqc8s22t': {
      'zh_Hans': 'Classes',
      'en': '',
      'ms': '',
    },
    'gjpaa72r': {
      'zh_Hans': 'Search for classes here...',
      'en': '',
      'ms': '',
    },
    'y33sq8jw': {
      'zh_Hans': 'Workout Categories',
      'en': '',
      'ms': '',
    },
    '7e3nse1p': {
      'zh_Hans': 'Yoga',
      'en': '',
      'ms': '',
    },
    'fuvkjsa8': {
      'zh_Hans': 'Karate',
      'en': '',
      'ms': '',
    },
    'v89s6pts': {
      'zh_Hans': 'Weightroom',
      'en': '',
      'ms': '',
    },
    'uyvsg0qe': {
      'zh_Hans': 'Cycling',
      'en': '',
      'ms': '',
    },
    'qq86h2k2': {
      'zh_Hans': 'Running',
      'en': '',
      'ms': '',
    },
    'ezavospe': {
      'zh_Hans': 'Upcoming Classes',
      'en': '',
      'ms': '',
    },
    'nt4k147n': {
      'zh_Hans': 'Class Name',
      'en': '',
      'ms': '',
    },
    'ifwvbyz5': {
      'zh_Hans': '30m | High Intensity | Indoor/Outdoor',
      'en': '',
      'ms': '',
    },
    'ifrl2j9g': {
      'zh_Hans': 'Reserve',
      'en': '',
      'ms': '',
    },
    'iw4ynp79': {
      'zh_Hans': 'Class Name',
      'en': '',
      'ms': '',
    },
    'x3kn26bv': {
      'zh_Hans': '30m | High Intensity | Indoor/Outdoor',
      'en': '',
      'ms': '',
    },
    'ryoq0e6k': {
      'zh_Hans': 'Reserve',
      'en': '',
      'ms': '',
    },
    'li7zot82': {
      'zh_Hans': 'Class Name',
      'en': '',
      'ms': '',
    },
    'l9kvgs6b': {
      'zh_Hans': '30m | High Intensity | Indoor/Outdoor',
      'en': '',
      'ms': '',
    },
    'ek6v4o4s': {
      'zh_Hans': 'Reserve',
      'en': '',
      'ms': '',
    },
  },
  // listview2
  {
    'c97k007d': {
      'zh_Hans': 'Page Title',
      'en': '',
      'ms': '',
    },
    'siv32edi': {
      'zh_Hans': 'Home',
      'en': '',
      'ms': '',
    },
  },
  // test123
  {
    'h8bg9imr': {
      'zh_Hans': 'Page Title',
      'en': '',
      'ms': '',
    },
    'igpafso7': {
      'zh_Hans': 'Home',
      'en': '',
      'ms': '',
    },
  },
  // topup
  {
    'qyqvpfe0': {
      'zh_Hans': 'key in the amount you wish to top up',
      'en': '',
      'ms': '',
    },
    'iyayo0ie': {
      'zh_Hans': 'RM',
      'en': '',
      'ms': '',
    },
    'm6qprl70': {
      'zh_Hans': '0.00',
      'en': '',
      'ms': '',
    },
    'b37oh9vq': {
      'zh_Hans': 'Button',
      'en': '',
      'ms': '',
    },
    '8q9alsst': {
      'zh_Hans': 'Page Title',
      'en': '',
      'ms': '',
    },
    '39ze7o8s': {
      'zh_Hans': 'Home',
      'en': '',
      'ms': '',
    },
  },
].reduce((a, b) => a..addAll(b));
