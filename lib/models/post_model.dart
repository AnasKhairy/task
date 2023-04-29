import 'package:json_annotation/json_annotation.dart';
part 'post_model.g.dart';



@JsonSerializable()
class Ticker {
  String symbol;
  double priceChange;
  double priceChangePercent;
  double weightedAvgPrice;
  double prevClosePrice;
  double lastPrice;
  double lastQty;
  double bidPrice;
  double bidQty;
  double askPrice;
  double askQty;
  double openPrice;
  double highPrice;
  double lowPrice;
  double volume;
  double quoteVolume;
  double openTime;
  double closeTime;
  double firstId;
  double lastId;
  double count;

  Ticker({
    required this.symbol,
    required this.priceChange,
    required this.priceChangePercent,
    required this.weightedAvgPrice,
    required this.prevClosePrice,
    required this.lastPrice,
    required this.lastQty,
    required this.bidPrice,
    required this.bidQty,
    required this.askPrice,
    required this.askQty,
    required this.openPrice,
    required this.highPrice,
    required this.lowPrice,
    required this.volume,
    required this.quoteVolume,
    required this.openTime,
    required this.closeTime,
    required this.firstId,
    required this.lastId,
    required this.count,
  });

  factory Ticker.formJson(Map<String, dynamic> json) =>
      _$TickerFromJson(json);
  Map<String, dynamic> toJson() => _$TickerToJson(this);

  static fromJson(Map<String, dynamic> i) {}
}
