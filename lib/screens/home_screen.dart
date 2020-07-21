import 'package:flutter/material.dart';
import 'package:how_is_the_dollar/generated/l10n.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          Internalization.of(context).appName,
          style: TextStyle(
            fontSize: 24
          ),
        ),
        centerTitle: true,
      ),

      body: Center(
        child: Text(
          Internalization.of(context).helloWorld,
          style: TextStyle(
            fontSize: 24
          ),
        ),
      ),
    );
  }
}