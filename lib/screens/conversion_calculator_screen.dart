import 'package:flutter/material.dart';
import 'package:how_is_the_dollar/generated/l10n.dart';

class ConversionCalculatorScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Internalization.of(context).conversionCalculator_conversionCalculator),
        centerTitle: true,
      ),

      
    );
  }
}