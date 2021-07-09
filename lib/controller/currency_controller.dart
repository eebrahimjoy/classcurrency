import 'dart:convert';

import 'package:currency/constants/api/constant.dart';
import 'package:currency/models/currency.dart';

class CurrencyController {
//ignore
  /*Future<GetCurrencyRate> getCurrency(String name) async {
    var response = await networkCall.loadCurrencyByMeasurement(name);
    return GetCurrencyRate.fromJson(jsonDecode(response));
  }*/

  Future<Currency> getCurrency(String fromCurrency) async {
    String response = await networkCall.loadCurrency(fromCurrency);
    Currency currency = Currency.fromJson(jsonDecode(response));
    return currency;
  }
}
