// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a pt locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'pt';

  static m0(currencyCode) => "${Intl.select(currencyCode, {'BRA': 'R\$', 'USD': 'U\$', 'other': 'currenyCode', })}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static _notInlinedMessages(_) => <String, Function> {
    "appName" : MessageLookupByLibrary.simpleMessage("How is the Dollar"),
    "conversionCalculator_calculateQuote" : MessageLookupByLibrary.simpleMessage("Calcular cotação"),
    "conversionCalculator_conversionCalculator" : MessageLookupByLibrary.simpleMessage("Calculadora de conversão"),
    "conversionCalculator_total" : MessageLookupByLibrary.simpleMessage("Total"),
    "conversionCalculator_value" : MessageLookupByLibrary.simpleMessage("Valor"),
    "currencyInformation_currencyCode" : MessageLookupByLibrary.simpleMessage("Código"),
    "currencyInformation_currencyHigh" : MessageLookupByLibrary.simpleMessage("Alta"),
    "currencyInformation_currencyInformation" : MessageLookupByLibrary.simpleMessage("Informações da moéda"),
    "currencyInformation_currencyLow" : MessageLookupByLibrary.simpleMessage("Baixa"),
    "currencyInformation_currencyName" : MessageLookupByLibrary.simpleMessage("Tipo"),
    "home_currencyCode" : m0,
    "lateralMenu_conversionCalculator" : MessageLookupByLibrary.simpleMessage("Calculadora de conversão"),
    "loading" : MessageLookupByLibrary.simpleMessage("Carregando"),
    "noConnection" : MessageLookupByLibrary.simpleMessage("Sem conexão")
  };
}
