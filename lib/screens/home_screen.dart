import 'package:flutter/material.dart';
import 'package:how_is_the_dollar/components/alert.dart';
import 'package:how_is_the_dollar/components/circular_load.dart';
import 'package:how_is_the_dollar/generated/l10n.dart';
import 'package:how_is_the_dollar/http/webclients/dollar_webclient.dart';
import 'package:how_is_the_dollar/models/dollar.dart';

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
                Dollar _dollar = snapshot.data;
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          Internalization.of(context).home_currencyCode("USD") +
                          ' ${_dollar.getHigh.toStringAsPrecision(3)}',
                          style: TextStyle(fontSize: 28),
                        ),
                        IconButton(
                          icon: Icon(Icons.info),
                          onPressed: () => Navigator.pushNamed(context, '/currency_information')
                        ),
                      ],
                    ),

                    Text(
                      '=',
                      style: TextStyle(fontSize: 28),
                    ),
                    Text(
                      Internalization.of(context).home_currencyCode('BRA') + ' 1.00',
                      style: TextStyle(fontSize: 26),
                    ),
                  ],
                );
                break;
            }
            return Alert(Internalization.of(context).noConnection);
          },
      )
      ),
    );
  }
}