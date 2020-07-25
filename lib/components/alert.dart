import 'package:flutter/material.dart';

class Alert extends StatelessWidget {
  final IconData icon;
  final String message;
  
  Alert(this.message, {this.icon});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          this.icon == null? Icons.warning : this.icon,
          size: 80,
        ),
        Text(
          this.message,
          style: TextStyle(
            fontSize: 24
          ),
        )
      ],
    );
  }
}