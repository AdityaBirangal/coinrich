import 'package:json_annotation/json_annotation.dart';
part 'crypto_data.g.dart';

@JsonSerializable(explicitToJson: true)
class CryptoData{
  final Status status;
  final DataList data;

  CryptoData({required this.status, required this.data});
  factory CryptoData.fromJson(Map<String, dynamic> json) => _$CryptoDataFromJson(json);
  Map<String, dynamic> toJson() => _$CryptoDataToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Status{
  final DateTime timestamp;
  final int error_code;
  final String? error_message;
  final int elapsed;
  final int credit_count;
  final String? notice;

  Status({required this.timestamp, required this.error_code, required this.error_message, required this.elapsed, required this.credit_count, required this.notice,});
  factory Status.fromJson(Map<String, dynamic> json) => _$StatusFromJson(json);
  Map<String, dynamic> toJson() => _$StatusToJson(this);
}

@JsonSerializable(explicitToJson: true)
class DataList{
  final CoinData ADA;
  final CoinData ATOM;
  final CoinData BCH;
  final CoinData BNB;
  final CoinData BTC;


  DataList({required this.ADA, required this.ATOM, required this.BCH, required this.BNB, required this.BTC});
  factory DataList.fromJson(Map<String, dynamic> json) => _$DataListFromJson(json);
  Map<String, dynamic> toJson() => _$DataListToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CoinData{
  final String name;
  final String symbol;
  final int cmc_rank;
  final QuoteData quote;

  CoinData({required this.name,required this.symbol, required this.cmc_rank, required this.quote});
  factory CoinData.fromJson(Map<String, dynamic> json) => _$CoinDataFromJson(json);
  Map<String, dynamic> toJson() => _$CoinDataToJson(this);
}

@JsonSerializable(explicitToJson: true)
class QuoteData{
  final PriceData USD;

  QuoteData({required this.USD});
  factory QuoteData.fromJson(Map<String, dynamic> json) => _$QuoteDataFromJson(json);
  Map<String, dynamic> toJson() => _$QuoteDataToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PriceData{
  final double price;
  final double percent_change_24h;

  PriceData({required this.price, required this.percent_change_24h});
  factory PriceData.fromJson(Map<String, dynamic> json) => _$PriceDataFromJson(json);
  Map<String,dynamic> toJson() => _$PriceDataToJson(this);
}