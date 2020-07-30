import 'package:flutter/material.dart';
import 'package:how_is_the_dollar/generated/l10n.dart';

class CircularLoad extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        CircularProgressIndicator(
          strokeWidth: 5,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            Internalization.of(context).loading,
            
          ),
        )
      ],
    );
  }
}