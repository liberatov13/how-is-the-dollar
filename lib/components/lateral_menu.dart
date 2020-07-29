import 'package:flutter/material.dart';
import 'package:how_is_the_dollar/generated/l10n.dart';

class LateralMenu extends StatelessWidget {
  const LateralMenu({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 24,

      child: ListView(
        
        scrollDirection: Axis.vertical,
        children: <Widget>[

          Card(
            elevation: 18,
            child: ListTile(
              leading: Icon(Icons.exposure),
              title: Text(
                Internalization.of(context).lateralMenu_conversionCalculator
              ),
              onTap: () => Navigator.pushNamed(context, '/conversion_calculator'),
            ),
          )

        ],
      ),
    );
  }
}