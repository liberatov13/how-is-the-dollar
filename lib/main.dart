import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:how_is_the_dollar/generated/l10n.dart';
import 'package:how_is_the_dollar/screens/conversion_calculator_screen.dart';
import 'package:how_is_the_dollar/screens/currency_information_screen.dart';
import 'package:how_is_the_dollar/screens/home_screen.dart';

void main() {
  runApp(HowIsMyDollar());
}

class HowIsMyDollar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        Internalization.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate
      ],
      supportedLocales: Internalization.delegate.supportedLocales,

      routes: {
        '/' : (context) => HomeScreen(),
        '/currency_information' : (context) => CurrencyInformationScreen(),
        '/conversion_calculator' : (context) => ConversionCalculatorScreen(),
      },
      
      theme: ThemeData(
        primaryColor: Colors.green[900],
        accentColor: Colors.greenAccent[700],
        cardColor: Colors.green[600],
        scaffoldBackgroundColor: Colors.green[600],
      ),
      title: 'How is the dollar',
    );
  }
}