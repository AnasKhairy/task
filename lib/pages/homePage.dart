import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:task_number_one/service/api_service.dart';
import 'package:task_number_one/models/post_model.dart' as model;
import 'package:dio/dio.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text("Binance Price"),
        centerTitle: true,
      ),
      body: _body(),
      backgroundColor: Colors.grey[900],
    );
  }

  FutureBuilder _body() {
    final apiService =
        ApiService(Dio(BaseOptions(contentType: "application/json")));
    return FutureBuilder(
        future: apiService.getTickers(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            final List<Ticker> tickers = snapshot.data!;
            return _tickers(tickers);
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        });
  }

  Widget _tickers(List<Ticker> tickers) {
    return ListView.builder(
      itemCount: 20,
      itemBuilder: (context, index) {
        return Container(
          margin: EdgeInsets.only(top: 10, left: 16, right: 16),
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.grey[800],
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: Colors.white, width: 1),
          ),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Text(
              tickers[index].symbol,
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
            ),
            Row(
              children: [
                Text(
                  tickers[index].lastPrice,
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(
                  width: 7,
                ),
                Container(
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.yellow ),
                  child: Text(tickers[index].priceChangePercent),
                )
              ],
            )
          ]),
        );
      },
    );
  }
}

final ticker = model.Ticker(
  symbol: 'BTCUSDT',
  priceChange: -0.015,
  priceChangePercent: -0.5,
  weightedAvgPrice: 55000,
  prevClosePrice: 55000,
  lastPrice: 54700,
  lastQty: 0.1,
  bidPrice: 54600,
  bidQty: 0.5,
  askPrice: 54700,
  askQty: 2.0,
  openPrice: 55000,
  highPrice: 56000,
  lowPrice: 54000,
  volume: 1000,
  quoteVolume: 50000,
  openTime: 1620144000000,
  closeTime: 1620230400000,
  firstId: 1,
  lastId: 100,
  count: 100,
);
