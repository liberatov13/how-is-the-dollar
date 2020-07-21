class Dollar {
  final String _code;
  final String _name;
  final double _high;
  final double _low;

  Dollar(this._code, this._name, this._high, this._low);

  Dollar.fromJson(Map<String, dynamic> json)
  :
  this._code = json['USD']['code'],
  this._name = json['USD']['name'],
  this._high = double.parse(json['USD']['high']),
  this._low = double.parse(json['USD']['low']);

  double getHigh() {
    return this._high;
  }
}