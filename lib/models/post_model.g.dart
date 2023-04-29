// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Ticker _$TickerFromJson(Map<String, dynamic> json) => Ticker(
      symbol: json['symbol'] as String,
      priceChange: (json['priceChange'] as num).toDouble(),
      priceChangePercent: (json['priceChangePercent'] as num).toDouble(),
      weightedAvgPrice: (json['weightedAvgPrice'] as num).toDouble(),
      prevClosePrice: (json['prevClosePrice'] as num).toDouble(),
      lastPrice: (json['lastPrice'] as num).toDouble(),
      lastQty: (json['lastQty'] as num).toDouble(),
      bidPrice: (json['bidPrice'] as num).toDouble(),
      bidQty: (json['bidQty'] as num).toDouble(),
      askPrice: (json['askPrice'] as num).toDouble(),
      askQty: (json['askQty'] as num).toDouble(),
      openPrice: (json['openPrice'] as num).toDouble(),
      highPrice: (json['highPrice'] as num).toDouble(),
      lowPrice: (json['lowPrice'] as num).toDouble(),
      volume: (json['volume'] as num).toDouble(),
      quoteVolume: (json['quoteVolume'] as num).toDouble(),
      openTime: (json['openTime'] as num).toDouble(),
      closeTime: (json['closeTime'] as num).toDouble(),
      firstId: (json['firstId'] as num).toDouble(),
      lastId: (json['lastId'] as num).toDouble(),
      count: (json['count'] as num).toDouble(),
    );

Map<String, dynamic> _$TickerToJson(Ticker instance) => <String, dynamic>{
      'symbol': instance.symbol,
      'priceChange': instance.priceChange,
      'priceChangePercent': instance.priceChangePercent,
      'weightedAvgPrice': instance.weightedAvgPrice,
      'prevClosePrice': instance.prevClosePrice,
      'lastPrice': instance.lastPrice,
      'lastQty': instance.lastQty,
      'bidPrice': instance.bidPrice,
      'bidQty': instance.bidQty,
      'askPrice': instance.askPrice,
      'askQty': instance.askQty,
      'openPrice': instance.openPrice,
      'highPrice': instance.highPrice,
      'lowPrice': instance.lowPrice,
      'volume': instance.volume,
      'quoteVolume': instance.quoteVolume,
      'openTime': instance.openTime,
      'closeTime': instance.closeTime,
      'firstId': instance.firstId,
      'lastId': instance.lastId,
      'count': instance.count,
    };
