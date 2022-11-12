// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'crypto_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CryptoData _$CryptoDataFromJson(Map<String, dynamic> json) => CryptoData(
      status: Status.fromJson(json['status'] as Map<String, dynamic>),
      data: DataList.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CryptoDataToJson(CryptoData instance) =>
    <String, dynamic>{
      'status': instance.status.toJson(),
      'data': instance.data.toJson(),
    };

Status _$StatusFromJson(Map<String, dynamic> json) => Status(
      timestamp: DateTime.parse(json['timestamp'] as String),
      error_code: json['error_code'] as int,
      error_message: json['error_message'] as String?,
      elapsed: json['elapsed'] as int,
      credit_count: json['credit_count'] as int,
      notice: json['notice'] as String?,
    );

Map<String, dynamic> _$StatusToJson(Status instance) => <String, dynamic>{
      'timestamp': instance.timestamp.toIso8601String(),
      'error_code': instance.error_code,
      'error_message': instance.error_message,
      'elapsed': instance.elapsed,
      'credit_count': instance.credit_count,
      'notice': instance.notice,
    };

DataList _$DataListFromJson(Map<String, dynamic> json) => DataList(
      ADA: CoinData.fromJson(json['ADA'] as Map<String, dynamic>),
      ATOM: CoinData.fromJson(json['ATOM'] as Map<String, dynamic>),
      BCH: CoinData.fromJson(json['BCH'] as Map<String, dynamic>),
      BNB: CoinData.fromJson(json['BNB'] as Map<String, dynamic>),
      BTC: CoinData.fromJson(json['BTC'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DataListToJson(DataList instance) => <String, dynamic>{
      'ADA': instance.ADA.toJson(),
      'ATOM': instance.ATOM.toJson(),
      'BCH': instance.BCH.toJson(),
      'BNB': instance.BNB.toJson(),
      'BTC': instance.BTC.toJson(),
    };

CoinData _$CoinDataFromJson(Map<String, dynamic> json) => CoinData(
      name: json['name'] as String,
      symbol: json['symbol'] as String,
      cmc_rank: json['cmc_rank'] as int,
      quote: QuoteData.fromJson(json['quote'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CoinDataToJson(CoinData instance) => <String, dynamic>{
      'name': instance.name,
      'symbol': instance.symbol,
      'cmc_rank': instance.cmc_rank,
      'quote': instance.quote.toJson(),
    };

QuoteData _$QuoteDataFromJson(Map<String, dynamic> json) => QuoteData(
      USD: PriceData.fromJson(json['USD'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$QuoteDataToJson(QuoteData instance) => <String, dynamic>{
      'USD': instance.USD.toJson(),
    };

PriceData _$PriceDataFromJson(Map<String, dynamic> json) => PriceData(
      price: (json['price'] as num).toDouble(),
      percent_change_24h: (json['percent_change_24h'] as num).toDouble(),
    );

Map<String, dynamic> _$PriceDataToJson(PriceData instance) => <String, dynamic>{
      'price': instance.price,
      'percent_change_24h': instance.percent_change_24h,
    };
