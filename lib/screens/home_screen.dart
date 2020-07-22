import 'package:flutter/material.dart';
import 'package:how_is_the_dollar/components/circular_load.dart';
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
        backgroundColor: Theme.of(context).primaryColor,
      ),
      backgroundColor: Theme.of(context).backgroundColor,
      body: Center(
        child: FutureBuilder(
          future: DollarWebClient().findPrice(),
          builder: (context, snapshot) {
            
            switch (snapshot.connectionState) {
              case ConnectionState.none:
                break;
              case ConnectionState.waiting:
                return CircularLoad();
                break;
              case ConnectionState.active:
                break;
              case ConnectionState.done:
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Text(
                          'U\$ ${snapshot.data.getHigh.toString()}',
                          style: TextStyle(fontSize: 28),
                        ),
                        FlatButton(
                          child: Icon(Icons.info),
                            
                          onPressed: () => Navigator.pushNamed(context, '/currency_information'),
                        ),
                      ],
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