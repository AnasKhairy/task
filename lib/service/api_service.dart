import 'package:flutter/scheduler.dart';
import 'package:retrofit/http.dart';
import 'package:dio/dio.dart';
import 'package:json_annotation/json_annotation.dart';
part 'api_service.g.dart';

@RestApi(baseUrl: "https://data.binance.com/api/v3/")
abstract class ApiService {
  factory ApiService(Dio dio, {String? baseUrl}) = _ApiService;

  @GET("ticker/24hr")
  Future<List<Ticker>> getTickers();
}

class Ticker {
  final String symbol;
  final String lastPrice;
  final String priceChangePercent;
  Ticker(
      {required this.symbol,
      required this.lastPrice,
      required this.priceChangePercent});

  factory Ticker.fromJson(Map<String, dynamic> json) {
    final lastPrice = json['lastPrice'];
    final priceChangePercent = double.tryParse(json['priceChangePercent']);
    return Ticker(
      symbol: json['symbol'],
      lastPrice: lastPrice.toString() ,
      priceChangePercent: priceChangePercent .toString(),
    );
  }
}
