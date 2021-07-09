class Currency {
  String _time;
  String _assetIdBase;
  String _assetIdQuote;
  double _rate;
  List<SrcSideQuote> _srcSideQuote;

  Currency(
      {String time,
        String assetIdBase,
        String assetIdQuote,
        double rate,
        List<SrcSideQuote> srcSideQuote}) {
    this._time = time;
    this._assetIdBase = assetIdBase;
    this._assetIdQuote = assetIdQuote;
    this._rate = rate;
    this._srcSideQuote = srcSideQuote;
  }

  String get time => _time;
  set time(String time) => _time = time;
  String get assetIdBase => _assetIdBase;
  set assetIdBase(String assetIdBase) => _assetIdBase = assetIdBase;
  String get assetIdQuote => _assetIdQuote;
  set assetIdQuote(String assetIdQuote) => _assetIdQuote = assetIdQuote;
  double get rate => _rate;
  set rate(double rate) => _rate = rate;
  List<SrcSideQuote> get srcSideQuote => _srcSideQuote;
  set srcSideQuote(List<SrcSideQuote> srcSideQuote) =>
      _srcSideQuote = srcSideQuote;

  Currency.fromJson(Map<String, dynamic> json) {
    _time = json['time'];
    _assetIdBase = json['asset_id_base'];
    _assetIdQuote = json['asset_id_quote'];
    _rate = json['rate'];
    if (json['src_side_quote'] != null) {
      _srcSideQuote = new List<SrcSideQuote>();
      json['src_side_quote'].forEach((v) {
        _srcSideQuote.add(new SrcSideQuote.fromJson(v));
      });
    }
  }

}

class SrcSideQuote {
  String _time;
  String _asset;
  double _rate;
  int _volume;

  SrcSideQuote({String time, String asset, double rate, int volume}) {
    this._time = time;
    this._asset = asset;
    this._rate = rate;
    this._volume = volume;
  }

  String get time => _time;
  set time(String time) => _time = time;
  String get asset => _asset;
  set asset(String asset) => _asset = asset;
  double get rate => _rate;
  set rate(double rate) => _rate = rate;
  int get volume => _volume;
  set volume(int volume) => _volume = volume;

  SrcSideQuote.fromJson(Map<String, dynamic> json) {
    _time = json['time'];
    _asset = json['asset'];
    _rate = json['rate'];
    _volume = json['volume'];
  }

}