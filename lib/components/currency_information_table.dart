import 'package:flutter/material.dart';
import 'package:how_is_the_dollar/generated/l10n.dart';
import 'package:how_is_the_dollar/models/dollar.dart';

class CurrencyInformationTable extends StatelessWidget {
  const CurrencyInformationTable({
    Key key,
    @required Dollar dollar,
  })  : _dollar = dollar,
        super(key: key);

  final Dollar _dollar;

  @override
  Widget build(BuildContext context) {
    return DataTable(
      columns: [
        DataColumn(
          label: Text(
            Internalization.of(context).currencyInformation_currencyCode,
            style: TextStyle(color: Colors.black),
          ),
        ),
        DataColumn(
          label: Text(
            Internalization.of(context).currencyInformation_currencyName,
            style: TextStyle(color: Colors.black),
          ),
        ),
        DataColumn(
          label: Text(
            Internalization.of(context).currencyInformation_currencyHigh,
            style: TextStyle(color: Colors.black),
          ),
        ),
        DataColumn(
          label: Text(
            Internalization.of(context).currencyInformation_currencyLow,
            style: TextStyle(color: Colors.black),
          ),
        ),
      ],
      rows: [
        DataRow(
          cells: [
            DataCell(
              Text(
                _dollar.getCode,
                style: TextStyle(color: Colors.black),
              ),
            ),
            DataCell(
              Text(
                _dollar.getName,
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.black),
              ),
            ),
            DataCell(
              Text(
                _dollar.getHigh.toStringAsFixed(2),
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.black),
              ),
            ),
            DataCell(
              Text(
                _dollar.getLow.toStringAsFixed(2),
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.black),
              ),
            ),
          ],
        )
      ],
    );
  }
}
