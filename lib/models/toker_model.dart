class TickerModel {
  final String symbol;
  final String lastPrice;
  final String priceChangePercent;

  double get lastPriceDouble => double.parse(lastPrice);
  double get priceChangePercentDouble => double.parse(priceChangePercent);

  TickerModel(
      {required this.symbol,
      required this.lastPrice,
      required this.priceChangePercent});

  factory TickerModel.fromJson(Map<String, dynamic> json) {
    final lastPrice = json['lastPrice'];
    final priceChangePercent = double.tryParse(json['priceChangePercent']);
    return TickerModel(
      symbol: json['symbol'],
      lastPrice: lastPrice.toString(),
      priceChangePercent: priceChangePercent.toString(),
    );
  }
}
