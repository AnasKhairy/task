import 'package:retrofit/http.dart';
import 'package:dio/dio.dart';

import '../models/toker_model.dart';
part 'api_service.g.dart';

@RestApi(baseUrl: "https://data.binance.com")
abstract class ApiService {
  factory ApiService(Dio dio, {String? baseUrl}) = _ApiService;

  @GET("/api/v3/ticker/24hr")
  Future<List<TickerModel>> getTickers();
}
