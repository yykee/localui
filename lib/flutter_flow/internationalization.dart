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
  // redeemlog
  {
    '8f5grk81': {
      'zh_Hans': 'Page Title',
      'en': '',
      'ms': '',
    },
    'p7rpa99b': {
      'zh_Hans': 'Home',
      'en': '',
      'ms': '',
    },
  },
  // redeem1
  {
    '2hnwmkf9': {
      'zh_Hans': 'Search events here...',
      'en': '',
      'ms': '',
    },
    'wtl58ywu': {
      'zh_Hans': 'Store/Location Name',
      'en': '',
      'ms': '',
    },
    'a2ovkqm8': {
      'zh_Hans': '123 Address St, City, ST',
      'en': '',
      'ms': '',
    },
    'f2dgl414': {
      'zh_Hans': 'Store/Location Name',
      'en': '',
      'ms': '',
    },
    'ln5svgcf': {
      'zh_Hans': '123 Address St, City, ST',
      'en': '',
      'ms': '',
    },
    '8g0i5dme': {
      'zh_Hans': '1.7mi',
      'en': '',
      'ms': '',
    },
    '8gzwpvnx': {
      'zh_Hans': 'Store/Location Name',
      'en': '',
      'ms': '',
    },
    'q6pybppm': {
      'zh_Hans': '123 Address St, City, ST',
      'en': '',
      'ms': '',
    },
    'n8k0aaar': {
      'zh_Hans': '1.7mi',
      'en': '',
      'ms': '',
    },
    '2v1556yx': {
      'zh_Hans': 'Store/Location Name',
      'en': '',
      'ms': '',
    },
    'hxgli55z': {
      'zh_Hans': '123 Address St, City, ST',
      'en': '',
      'ms': '',
    },
    '6koma90c': {
      'zh_Hans': '1.7mi',
      'en': '',
      'ms': '',
    },
    'nba95jcw': {
      'zh_Hans': 'Store/Location Name',
      'en': '',
      'ms': '',
    },
    '2htvx111': {
      'zh_Hans': '123 Address St, City, ST',
      'en': '',
      'ms': '',
    },
    '7pn6fcdl': {
      'zh_Hans': '1.7mi',
      'en': '',
      'ms': '',
    },
    'qn66ml0p': {
      'zh_Hans': 'Map View',
      'en': '',
      'ms': '',
    },
    'epit51ii': {
      'zh_Hans': 'Shop',
      'en': '',
      'ms': '',
    },
  },
  // newpage
  {
    'zpy3exox': {
      'zh_Hans': 'Tel',
      'en': '',
      'ms': '',
    },
    'u766yhz5': {
      'zh_Hans': 'Tel',
      'en': '',
      'ms': '',
    },
    'mxlitd5x': {
      'zh_Hans': '[Some hint text...]',
      'en': '',
      'ms': '',
    },
    'z7fyteru': {
      'zh_Hans': 'Page Title',
      'en': '',
      'ms': '',
    },
    'dsj706vu': {
      'zh_Hans': 'Home',
      'en': '',
      'ms': '',
    },
  },
  // amount1
  {
    '1cd9202y': {
      'zh_Hans': 'Add Transaction',
      'en': '',
      'ms': '',
    },
    '5rn7y4ip': {
      'zh_Hans': 'Amount',
      'en': '',
      'ms': '',
    },
    'cbv0qr4w': {
      'zh_Hans': 'Spent At',
      'en': '',
      'ms': '',
    },
    'q0w0nvqz': {
      'zh_Hans': 'Office Budget',
      'en': '',
      'ms': '',
    },
    'dt6yly0b': {
      'zh_Hans': 'External Transfer',
      'en': '',
      'ms': '',
    },
    'm6hpznx8': {
      'zh_Hans': 'ACH Payment',
      'en': '',
      'ms': '',
    },
    'nyyrs6zs': {
      'zh_Hans': 'Type of Transfer',
      'en': '',
      'ms': '',
    },
    'tyd649ly': {
      'zh_Hans': 'Reason',
      'en': '',
      'ms': '',
    },
    'hx2o3hk4': {
      'zh_Hans': 'Please type the reason here...',
      'en': '',
      'ms': '',
    },
    'z3r5idmx': {
      'zh_Hans': 'Add Transaction',
      'en': '',
      'ms': '',
    },
    'mec6mxzs': {
      'zh_Hans': 'Tap above to complete request',
      'en': '',
      'ms': '',
    },
    'k7syrspr': {
      'zh_Hans': 'Please enter an amount',
      'en': '',
      'ms': '',
    },
    'lxygqkqb': {
      'zh_Hans': 'Home',
      'en': '',
      'ms': '',
    },
  },
  // test
  {
    '840wccy8': {
      'zh_Hans': 'Page Title',
      'en': '',
      'ms': '',
    },
    'q80a3iyz': {
      'zh_Hans': 'Hello World',
      'en': '',
      'ms': '',
    },
    'lifav5hb': {
      'zh_Hans': 'Hello World',
      'en': '',
      'ms': '',
    },
    'vp0a9ukv': {
      'zh_Hans': 'Hello World',
      'en': '',
      'ms': '',
    },
    'hq3c0s3y': {
      'zh_Hans': 'Hello World',
      'en': '',
      'ms': '',
    },
    'kb1pua7t': {
      'zh_Hans': 'Hello World',
      'en': '',
      'ms': '',
    },
    'd1i7jf0o': {
      'zh_Hans': 'Hello World',
      'en': '',
      'ms': '',
    },
    'h8k3aofz': {
      'zh_Hans': 'Hello World',
      'en': '',
      'ms': '',
    },
    '812jcla8': {
      'zh_Hans': 'Hello World',
      'en': '',
      'ms': '',
    },
    'h3mr0e3h': {
      'zh_Hans': 'Hello World',
      'en': '',
      'ms': '',
    },
    'nlqinaxb': {
      'zh_Hans': 'Hello World',
      'en': '',
      'ms': '',
    },
    'oujhuz0t': {
      'zh_Hans': 'Home',
      'en': '',
      'ms': '',
    },
  },
].reduce((a, b) => a..addAll(b));
