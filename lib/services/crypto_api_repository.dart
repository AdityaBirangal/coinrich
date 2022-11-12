import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:coinrich/models/crypto_data.dart';

class CryptoApiRepository{
  static const String _key = 'YOUR_API_KEY_HERE';
  final Map<String,String> _headers = {"Content-Type": "application/json", "X-CMC_PRO_API_KEY": _key};

  Future<CryptoData> fetchCryptoData() async{
    print('CryptoApiRepository : fetchCryptoData');

    String requestURL = 'https://pro-api.coinmarketcap.com/v1/cryptocurrency/quotes/latest?symbol=ADA,ATOM,BCH,BNB,BTC';
    var response = await http.get(Uri.parse(requestURL),headers: _headers);
    print("statusCode: ${response.statusCode}");
    if (response.statusCode == 200){
      // print("body: ${response.body}");
      CryptoData cryptoData = CryptoData.fromJson(jsonDecode(response.body));
      // print("cryptoData.toJson(): ${cryptoData.toJson()}");
      return cryptoData;
    }
    else{
      throw Exception("Error \n Status code: ${response.statusCode} \n Body : ${response.body}");
    }
  }


}


