import 'package:currency/constants/api/api.dart';
import 'package:currency/constants/api/constant.dart';

class NetworkCall {
  //currency
  Future<String> loadCurrency(String fromCurrency) async {
    String apiUri =  ApiConstant.GET_CURRENCY  + '/$fromCurrency/BDT'+ '?apiKey=${ApiConstant.API_KEY}';
    Uri uri = Uri.parse(apiUri);
    var response = await client.get(uri);
    return response.body;

  }

//ignore
  /*Future<String> loadCurrencyByMeasurement(String name) async {
    String apiName = ApiConstant.GET_CURRENCY + 'q=$name&apiKey=${ApiConstant.API_KEY}';
    var api = Uri.parse(apiName);
    var response = await client.get(api);
    return response.body;
  }*/
}