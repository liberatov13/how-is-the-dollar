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
          ),
        ),
        DataColumn(
          label: Text(
            Internalization.of(context).currencyInformation_currencyName,
          ),
        ),
        DataColumn(
          label: Text(
            Internalization.of(context).currencyInformation_currencyHigh,
          ),
        ),
        DataColumn(
          label: Text(
            Internalization.of(context).currencyInformation_currencyLow,
          ),
        ),
      ],
      rows: [
        DataRow(
          cells: [
            DataCell(
              Text(
                _dollar.getCode,
              ),
            ),
            DataCell(
              Text(
                _dollar.getName,
              ),
            ),
            DataCell(
              Text(
                _dollar.getHigh.toStringAsPrecision(3),
                textAlign: TextAlign.center,
              ),
            ),
            DataCell(
              Text(
                _dollar.getLow.toStringAsPrecision(3),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        )
      ],
    );
  }
}
