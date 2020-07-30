class Dollar {
  final String _code, _name;
  final double _high, _low;

  Dollar(this._code, this._name, this._high, this._low);

  Dollar.fromJson(Map<String, dynamic> json)
  :
  this._code = json['USD']['code'],
  this._name = json['USD']['name'],
  this._high = double.parse(json['USD']['high']),
  this._low = double.parse(json['USD']['low']);

  String get getCode => this._code;
  String get getName => this._name;
  double get getHigh => this._high;
  double get getLow => this._low;

  double convertFromReal(double value) {
    print('Hey ${this._high * value}');
    return this._high * value;
  }

}