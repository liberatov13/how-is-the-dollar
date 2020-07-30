import 'package:flutter/material.dart';
import 'package:how_is_the_dollar/components/alert.dart';
import 'package:how_is_the_dollar/components/circular_load.dart';
import 'package:how_is_the_dollar/generated/l10n.dart';
import 'package:how_is_the_dollar/http/webclients/dollar_webclient.dart';
import 'package:how_is_the_dollar/models/dollar.dart';

class ConversionCalculatorScreen extends StatefulWidget {

  @override
  _ConversionCalculatorScreenState createState() => _ConversionCalculatorScreenState();
}

class _ConversionCalculatorScreenState extends State<ConversionCalculatorScreen> {
  String _total = '';
  final TextEditingController _valueController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Dollar _dollar;

    return Scaffold(
      appBar: AppBar(
        title: Text(Internalization.of(context).conversionCalculator_conversionCalculator),
        centerTitle: true,
      ),
          
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[

          Card(
            margin: EdgeInsets.all(16),
            color: Theme.of(context).primaryColor,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 120 , vertical: 15),
              child: FutureBuilder<Dollar>(
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
                      _dollar = snapshot.data;
                      return Text(
                        '${Internalization.of(context).conversionCalculator_total}: ${_total.isEmpty? 0 : _total}',
                        style: TextStyle(
                          color: Colors.white
                        )
                      );
                      break;
                  }
                  return Alert(Internalization.of(context).noConnection);
                },

              ),
            )
          ),

          Flexible(
            child: Padding(
              padding: EdgeInsets.only(left: 8, right: 8),

              child: TextField(
                controller: _valueController,
                keyboardType: TextInputType.numberWithOptions(decimal: true, signed: false),
                maxLines: 1,
                onEditingComplete: () {
                  updatesTotal(_dollar);
                },
                cursorColor: Colors.black,
                style: TextStyle(fontSize: 18),

                decoration: InputDecoration(
                  icon: Icon(Icons.monetization_on, color: Colors.black,),
                  hintText: Internalization.of(context).home_currencyCode('BRA'),
                  labelText: Internalization.of(context).conversionCalculator_value,
                ),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: RaisedButton.icon(
              icon: Icon(Icons.exposure),
              label: Text(
                Internalization.of(context).conversionCalculator_calculateQuote,),
              onPressed: () {
                updatesTotal(_dollar);
              },
            ),
          )
        ],
      ),

    );
  }

  void updatesTotal(Dollar _dollar) {
    if (_valueController.text.isNotEmpty) {
      _total = _dollar.convertFromReal(
        double.parse(_valueController.text)
      ).toStringAsFixed(2);
      setState(() {});
    }
  }
}