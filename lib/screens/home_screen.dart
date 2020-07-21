import 'package:flutter/material.dart';
import 'package:how_is_the_dollar/generated/l10n.dart';
import 'package:how_is_the_dollar/http/webclients/dollar_webclient.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          Internalization.of(context).appName,
          style: TextStyle(fontSize: 24),
        ),
        centerTitle: true,
      ),
      backgroundColor: Theme.of(context).accentColor,
      body: Center(
        child: FutureBuilder(
          future: DollarWebClient().findPrice(),
          builder: (context, snapshot) {
            
            switch (snapshot.connectionState) {
              case ConnectionState.none:
                break;
              case ConnectionState.waiting:
                return CircularProgressIndicator(
                  backgroundColor: Colors.black,
                );
                break;
              case ConnectionState.active:
                break;
              case ConnectionState.done:
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'U\$ ${snapshot.data.getHigh()}',
                      style: TextStyle(fontSize: 28),
                    ),
                    Text(
                      '=',
                      style: TextStyle(fontSize: 28),
                    ),
                    Text(
                      'R\$ 1.00',
                      style: TextStyle(fontSize: 22),
                    ),
                  ],
                );
                break;
            }
            return Text('Unknow error');

          },
      )
      ),
    );
  }
}