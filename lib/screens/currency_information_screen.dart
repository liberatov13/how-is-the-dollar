import 'package:flutter/material.dart';
import 'package:how_is_the_dollar/components/circular_load.dart';
import 'package:how_is_the_dollar/generated/l10n.dart';
import 'package:how_is_the_dollar/http/webclients/dollar_webclient.dart';
import 'package:how_is_the_dollar/models/dollar.dart';

class CurrencyInformationScreen extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Internalization.of(context).currencyInformation_currencyInformation),
      ),
      backgroundColor: Theme.of(context).backgroundColor,

      body: Center(
        child: FutureBuilder(
          future: DollarWebClient().findPrice(),
          builder: (context, snapshot) {

            switch(snapshot.connectionState) {
              
              case ConnectionState.none:
                break;
              case ConnectionState.waiting:
                return CircularLoad();
                break;
              case ConnectionState.active:
                break;
              case ConnectionState.done:
                Dollar _dollar = snapshot.data;
              
                return DataTable(
                  columns: [
                    DataColumn(label: Text(Internalization.of(context).currencyInformation_currencyCode)),
                    DataColumn(label: Text(Internalization.of(context).currencyInformation_currencyName)),
                    DataColumn(label: Text(Internalization.of(context).currencyInformation_currencyHigh)),
                    DataColumn(label: Text(Internalization.of(context).currencyInformation_currencyLow)),
                  ],
                  rows: [
                    DataRow(
                      cells: [
                        DataCell(Text(_dollar.getCode)),
                        DataCell(Text(_dollar.getName)),
                        DataCell(Text(_dollar.getHigh.toString())),
                        DataCell(Text(_dollar.getLow.toString())),
                      ]
                    )
                  ],
                );
                break;
            }
            return Center(child: Text('Unkwon error'));
          },
        )
      ),
    );
  }
}