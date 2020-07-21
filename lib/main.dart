import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:how_is_the_dollar/generated/l10n.dart';
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
      
      title: 'How is the dollar',
      home: HomeScreen()
    );
  }
}