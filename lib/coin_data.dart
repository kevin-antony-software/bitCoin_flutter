import 'dart:convert';

import 'package:http/http.dart' as http;

class CoinData {
  // NetworkHelper(this.url);
  // String url;

  Future getCoinData(String currencyType) async {
    String coinType = "BTC";
    String currencyType = "USD";
    print("test123333");

    var url =
        'https://rest.coinapi.io/v1/exchangerate/$coinType/$currencyType?apikey=%204B154B69-6D82-418B-9A22-C09DC5585D81';
    http.Response response = await http.get(Uri.parse(url));
    print("response code is : " + response.statusCode.toString());
    if (response.statusCode == 200) {
      var decodedData = jsonDecode(response.body);
      print(decodedData);
      return decodedData;
    } else {
      print(response.statusCode);
    }
  }
}

const List<String> currenciesList = [
  'AUD',
  'BRL',
  'CAD',
  'CNY',
  'EUR',
  'GBP',
  'HKD',
  'IDR',
  'ILS',
  'INR',
  'JPY',
  'MXN',
  'NOK',
  'NZD',
  'PLN',
  'RON',
  'RUB',
  'SEK',
  'SGD',
  'USD',
  'ZAR'
];

const List<String> cryptoList = [
  'BTC',
  'ETH',
  'LTC',
];
