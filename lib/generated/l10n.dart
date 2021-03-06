// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars

class Internalization {
  Internalization();
  
  static Internalization current;
  
  static const AppLocalizationDelegate delegate =
    AppLocalizationDelegate();

  static Future<Internalization> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false) ? locale.languageCode : locale.toString();
    final localeName = Intl.canonicalizedLocale(name); 
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      Internalization.current = Internalization();
      
      return Internalization.current;
    });
  } 

  static Internalization of(BuildContext context) {
    return Localizations.of<Internalization>(context, Internalization);
  }

  /// `How is the Dollar`
  String get appName {
    return Intl.message(
      'How is the Dollar',
      name: 'appName',
      desc: '',
      args: [],
    );
  }

  /// `Loading`
  String get loading {
    return Intl.message(
      'Loading',
      name: 'loading',
      desc: '',
      args: [],
    );
  }

  /// `No connection`
  String get noConnection {
    return Intl.message(
      'No connection',
      name: 'noConnection',
      desc: '',
      args: [],
    );
  }

  /// `Conversion calculator`
  String get lateralMenu_conversionCalculator {
    return Intl.message(
      'Conversion calculator',
      name: 'lateralMenu_conversionCalculator',
      desc: '',
      args: [],
    );
  }

  /// `{currencyCode, select, BRA {R$} USD {U$} other {currenyCode}}`
  String home_currencyCode(Object currencyCode) {
    return Intl.select(
      currencyCode,
      {
        'BRA': 'R\$',
        'USD': 'U\$',
        'other': 'currenyCode',
      },
      name: 'home_currencyCode',
      desc: '',
      args: [currencyCode],
    );
  }

  /// `Conversion calculator`
  String get conversionCalculator_conversionCalculator {
    return Intl.message(
      'Conversion calculator',
      name: 'conversionCalculator_conversionCalculator',
      desc: '',
      args: [],
    );
  }

  /// `Calculate quote`
  String get conversionCalculator_calculateQuote {
    return Intl.message(
      'Calculate quote',
      name: 'conversionCalculator_calculateQuote',
      desc: '',
      args: [],
    );
  }

  /// `Total`
  String get conversionCalculator_total {
    return Intl.message(
      'Total',
      name: 'conversionCalculator_total',
      desc: '',
      args: [],
    );
  }

  /// `Value`
  String get conversionCalculator_value {
    return Intl.message(
      'Value',
      name: 'conversionCalculator_value',
      desc: '',
      args: [],
    );
  }

  /// `Currency information`
  String get currencyInformation_currencyInformation {
    return Intl.message(
      'Currency information',
      name: 'currencyInformation_currencyInformation',
      desc: '',
      args: [],
    );
  }

  /// `Code`
  String get currencyInformation_currencyCode {
    return Intl.message(
      'Code',
      name: 'currencyInformation_currencyCode',
      desc: '',
      args: [],
    );
  }

  /// `Name`
  String get currencyInformation_currencyName {
    return Intl.message(
      'Name',
      name: 'currencyInformation_currencyName',
      desc: '',
      args: [],
    );
  }

  /// `High`
  String get currencyInformation_currencyHigh {
    return Intl.message(
      'High',
      name: 'currencyInformation_currencyHigh',
      desc: '',
      args: [],
    );
  }

  /// `Low`
  String get currencyInformation_currencyLow {
    return Intl.message(
      'Low',
      name: 'currencyInformation_currencyLow',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<Internalization> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'pt'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<Internalization> load(Locale locale) => Internalization.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    if (locale != null) {
      for (var supportedLocale in supportedLocales) {
        if (supportedLocale.languageCode == locale.languageCode) {
          return true;
        }
      }
    }
    return false;
  }
}